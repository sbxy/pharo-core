createArrayedMethodFor: aSpec


	^ String streamContents: [:str |
		str 
			nextPutAll: aSpec asMethodSelectorAndArrayOfArguments ;
			crtab;
			nextPutAll: '<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>';
			cr;
			crtab;
			nextPutAll: 'argsArray size = ', aSpec arguments size printString, ' ifFalse:[^Error signal: ''Incorrect number of arguments''].';
			crtab;
			nextPutAll: '^ self call: ';
			nextPutAll: aSpec asArraySpecArrayedArgs ;
			cr
	].


		
