asArraySpec

	^ String streamContents: [:str | 

		str 
			nextPutAll: '#( '.
		
		self printType: returnType on: str.
		str space.
		
		functionName ifNotNil: [
			str nextPutAll: functionName; space ].
		
		str nextPutAll: '( '.
		
		arguments do: [:arg | 
			
			str nextPutAll: arg second. "type name"
			arg third timesRepeat: [
				str nextPut: $* ].
			str space;
				nextPutAll: arg first;
				space
		] separatedBy: [ str nextPutAll: ', ' ].
	
		str nextPutAll: '))'.
		
	]