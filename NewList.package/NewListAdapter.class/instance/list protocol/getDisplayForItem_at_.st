getDisplayForItem: item at: index

	^ self getDisplaySelector 
			ifNil: [ item printString ]
			ifNotNil: [ :s | self model perform: s withEnoughArguments: {item. index} ]