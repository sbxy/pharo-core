setUp
	{NBTestNestedStructure.
	NBTestStructure.
	NBTestStructure1byte.
	NBTestStructure2.
	NBTestStructure9bytes.
	NBTestStructureWithCallback.
	NBTestUnion1Byte.
	NBTestUnion2Pointers.
	NBTestUnionIntSize.
	NBTestUnionWithCallback.
	NBTestUnionWithStructure.
	NBTestUnionWithUnion} do: [ :each | each perform: #rebuildFieldAccessors ]