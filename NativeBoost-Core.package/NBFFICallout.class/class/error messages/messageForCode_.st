messageForCode: aCode
	CustomErrorCodes ifNil: [ ^ nil ].
	
	^ CustomErrorCodes at: aCode ifAbsent: nil