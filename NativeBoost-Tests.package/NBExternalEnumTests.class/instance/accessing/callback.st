callback
	^ self cbClass on: [ :anInt | self enumClass at: (self enumClass itemAt: anInt) ]