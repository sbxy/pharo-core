structByteArray: aValue 
	^(self class structArrayType with: (self structValue: aValue)) address.
