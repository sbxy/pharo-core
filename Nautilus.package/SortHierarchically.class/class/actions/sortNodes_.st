sortNodes: nodes
	"Roel Wuyts: Reimplements sortHierarchically in a crude and ugly way that is however much more efficient"
	
	| classNodes sortedResults supersChain superior result chain1 chain2 i max |
	classNodes := (nodes collect: [:classNode | classNode element]) asOrderedCollection.
	sortedResults := SortedCollection sortBlock: [:assoc1 :assoc2 |
		result := nil.
		chain1 := assoc1 key.
		chain2 := assoc2 key. 
		max := chain1 size min: chain2 size.
		i := 1.
		[result isNil and: [i <= max]] whileTrue: [
			(chain1 at: i) = (chain2 at: i)
				ifTrue: [i := i + 1]
				ifFalse: [result := (chain1 at: i) name < (chain2 at: i) name]].
		result ifNil: [
			chain1 size < chain2 size] ifNotNil: [result]
	].
	nodes do: [:classNode |
		supersChain := classNode element withAllSuperclasses reversed.
		supersChain removeAllSuchThat: [:cl | (classNodes includes: cl) not].
		superior := supersChain size > 1
			ifTrue: [superior := supersChain atLast: 2. nodes detect: [:e | e element = superior]]
			ifFalse: [nil].
		sortedResults add: supersChain contents -> (classNode ancestor: superior).
	].
	^(sortedResults collect: [:assoc | assoc value]) asArray