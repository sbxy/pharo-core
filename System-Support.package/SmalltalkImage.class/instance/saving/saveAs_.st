saveAs: newNameWithoutSuffix
	"Results:
		true  when continuing in the new session
		false for the current session "
		
	newNameWithoutSuffix ifNil: [ ^ self ].
	(SourceFiles at: 2) ifNotNil:
		[self closeSourceFiles; "so copying the changes file will always work"
			 saveChangesInFileNamed: (self fullNameForChangesNamed: newNameWithoutSuffix)].
	^self saveImageInFileNamed: (self fullNameForImageNamed: newNameWithoutSuffix)