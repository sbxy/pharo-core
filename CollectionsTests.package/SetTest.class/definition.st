CollectionRootTest subclass: #SetTest
	uses: TAddForUniquenessTest + TIncludesWithIdentityCheckTest + TCloneTest + TCopyTest + TRemoveTest + TGrowableTest + TStructuralEqualityTest + TPrintTest + TAsStringCommaAndDelimiterTest + TConvertTest + TConvertAsSortedTest + TConcatenationEqualElementsRemovedTest + TOccurrencesTest + (TCreationWithTest - {#testOfSize. #collectionClass}) + (TSetArithmetic - {#collectionClass})
	instanceVariableNames: 'full empty collectResult emptyButAllocatedWith20 elementNotIn collectionOfFloat collectionIncluded nonEmpty1element withoutEqualElements collection5Elements collectionWith3Elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Unordered'