changeRecordsFrom: initialSourcePointer className: theNonMetaClassName isMeta: classIsMeta do: aUnaryBlock
	"Evaluate aUnaryBlock with each of the ChangeRecords of a method, starting from the initialSourcePointer. 
	Most recent changes are evaluated first."

	| filePosition fileIndex |
	fileIndex := self fileIndexFromSourcePointer: initialSourcePointer.
	filePosition := self filePositionFromSourcePointer: initialSourcePointer.	

	self readOnlyDo: [ :sourceFilesCopy | 
		| file previousFilePosition previousFileIndex preamble stamp protocol preambleTokens |
		file := sourceFilesCopy 
			at: fileIndex 
			ifAbsent: [ ^ self ].
		
		[ filePosition notNil & file notNil ]
			whileTrue: [ 
				file position: (0 max: filePosition - 150).	"Skip back to before the preamble"
				[ file position < (filePosition - 1) ] whileTrue: [ preamble := file nextChunk ].	"then pick it up from the front"	
					"Preamble is likely a linked method preamble, if we're in
					a changes file (not the sources file).  Try to parse it
					for prior source position and file index"

				previousFilePosition := nil.
				stamp := ''.
				(preamble includesSubstring: 'methodsFor:')
					ifTrue: [ preambleTokens := preamble parseLiterals ]
					ifFalse: [ preambleTokens := Array new	"ie cant be back ref" ].

				((preambleTokens size between: 7 and: 8) and: [ (preambleTokens at: preambleTokens size - 5) = #methodsFor: ])
					ifTrue: [ 
						(preambleTokens at: preambleTokens size - 3) = #stamp:
							ifTrue: [ 
								"New format gives change stamp and unified prior pointer"
								stamp := preambleTokens at: preambleTokens size - 2.
								previousFilePosition := preambleTokens last.
								previousFileIndex := self fileIndexFromSourcePointer: previousFilePosition.
								previousFilePosition := self filePositionFromSourcePointer: previousFilePosition ]
							ifFalse: [ 
								"Old format gives no stamp; prior pointer in two parts"
								previousFilePosition := preambleTokens at: preambleTokens size - 2.
								previousFileIndex := preambleTokens last ].
						(previousFilePosition = 0 or: [ previousFileIndex = 0 ])
							ifTrue: [ previousFilePosition := nil ] ].

				((preambleTokens size between: 5 and: 6) and: [ (preambleTokens at: preambleTokens size - 3) = #methodsFor: ])
					ifTrue: [ 
						(preambleTokens at: preambleTokens size - 1) = #stamp:
							ifTrue: [ 
								"New format gives change stamp and unified prior pointer"
								stamp := preambleTokens at: preambleTokens size ] ].
						
				protocol := preambleTokens 
					after: #methodsFor: 
					ifAbsent: [ Protocol unclassified ].

				aUnaryBlock value: (
					ChangeRecord new
						file: file
						position: filePosition
						type: #method
						class: theNonMetaClassName
						category: protocol
						meta: classIsMeta
						stamp: stamp).

				filePosition := previousFilePosition.
				previousFilePosition ifNotNil: [ 
					file := sourceFilesCopy 
						at: previousFileIndex
						ifAbsent: [  ^ self ] ] ] ]