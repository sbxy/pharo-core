NBExternalHandle variableByteSubclass: #NBExternalAddress
	uses: TNBMemoryAccessors @ {#byteAt:->#nbInt8AtOffset:. #byteAt:put:->#nbInt8AtOffset:put:. #longAt:->#nbInt32AtOffset:. #longAt:put:->#nbInt32AtOffset:put:. #ulongAt:->#nbUInt32AtOffset:. #ulongAt:put:->#nbUInt32AtOffset:put:}
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NativeBoost-Core-Objects'