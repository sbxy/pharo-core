at: aName ifAbsentPut: aBlock

	^ self at: aName ifAbsent: [ self at: aName put: aBlock value ]