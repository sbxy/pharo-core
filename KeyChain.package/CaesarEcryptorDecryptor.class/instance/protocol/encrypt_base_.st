encrypt: aString base: aBase

	^ String streamContents: [:s | 
		aString do: [:c | s nextPut: ( Character value: (c asciiValue + aBase size )) ]]