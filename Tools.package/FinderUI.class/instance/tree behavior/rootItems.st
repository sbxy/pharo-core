rootItems
	^self resultDictionary keys sort:[:a :b | a name  < b name]