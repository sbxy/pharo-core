proxyFunctionsData

	"taken from sqVirtualMachine.h"
	^ #(
		#minorVersion (void)
		#majorVersion (void)

		" InterpreterProxy methodsFor: 'stack access' "
		#pop: (sqInt)
		#pop:thenPush: (sqInt sqInt)
		#push: (sqInt)
		#pushBool: (sqInt)
		#pushFloat: (double)
		#pushInteger: (sqInt)
		#stackFloatValue: (sqInt )
		#stackIntegerValue: (sqInt)
		#stackObjectValue: (sqInt)
		#stackValue: (sqInt)

		" InterpreterProxy methodsFor: 'object access'  "

		#argumentCountOf: (sqInt)
		#arrayValueOf: (sqInt)
		#byteSizeOf: (sqInt)
		#fetchArray:ofObject: (sqInt sqInt)
		#fetchClassOf: (sqInt)
		#fetchFloat:ofObject: (sqInt sqInt)
		#fetchInteger:ofObject: (sqInt sqInt)
		#fetchPointer:ofObject: (sqInt sqInt)
		#obsoleteDontUseThisFetchWord:ofObject: (sqInt sqInt)
		#firstFixedField: (sqInt)
		#firstIndexableField: (sqInt)
		#literal:ofMethod: (sqInt  sqInt)
		#literalCountOf: (sqInt )
		#methodArgumentCount (void)
		#methodPrimitiveIndex (void)
		#primitiveIndexOf: (sqInt )
		#sizeOfSTArrayFromCPrimitive: (voidPtr)
		#slotSizeOf: (sqInt )
		#stObject:at: (sqInt   sqInt )
		#stObject:at:put: (sqInt   sqInt   sqInt)
		#stSizeOf: (sqInt)
		#storeInteger:ofObject:withValue: (sqInt   sqInt   sqInt )
		#storePointer:ofObject:withValue: (sqInt   sqInt   sqInt )

		" InterpreterProxy methodsFor: 'testing' "

		#is:KindOf: (sqInt   charPtr)
		#is:MemberOf: (sqInt charPtr)
		#isBytes: (sqInt )
		#isFloatObject: (sqInt )
		#isIndexable: (sqInt )
		#isIntegerObject: (sqInt )
		#isIntegerValue: (sqInt )
		#isPointers: (sqInt )
		#isWeak: (sqInt )
		#isWords: (sqInt )
		#isWordsOrBytes: (sqInt )

		" InterpreterProxy methodsFor: 'converting' "

		#booleanValueOf: (sqInt )
		#checkedIntegerValueOf: (sqInt )
		#floatObjectOf: (double )
		#floatValueOf: (sqInt )
		#integerObjectOf: (sqInt )
		#integerValueOf: (sqInt )
		#positive32BitIntegerFor: (sqInt )
		#positive32BitValueOf: (sqInt )

		" InterpreterProxy methodsFor: 'special objects' "

		#characterTable (void)
		#displayObject (void)
		#falseObject (void)
		#nilObject (void)
		#trueObject (void)

		" InterpreterProxy methodsFor: 'special classes' "

		#classArray (void)
		#classBitmap (void)
		#classByteArray (void)
		#classCharacter (void)
		#classFloat (void)
		#classLargePositiveInteger (void)
		#classPoint (void)
		#classSemaphore (void)
		#classSmallInteger (void)
		#classString (void)

		" InterpreterProxy methodsFor: 'instance creation' "

		#clone: (sqInt )
		#instantiateClass:indexableSize: (sqInt   sqInt )
		#makePointwithxValue:yValue: (sqInt   sqInt )
		#popRemappableOop (void)
		#pushRemappableOop: (sqInt )

		" InterpreterProxy methodsFor: 'other' "

		#become:with: (sqInt   sqInt )
		#byteSwapped: (sqInt)
		#failed (void)
		#fullDisplayUpdate (void)
		#fullGC (void)
		#incrementalGC (void)
		#primitiveFail (void)
		#showDisplayBits:Left:Top:Right:Bottom: (sqInt   sqInt  sqInt  sqInt  sqInt)
		#signalSemaphoreWithIndex: (sqInt)
		#success: (sqInt )
		#superclassOf: (sqInt )

		" InterpreterProxy methodsFor: 'compiler' "

		#compilerHookVector (void)
		#setCompilerInitialized: (sqInt )

		" VM_PROXY_MINOR > 1 "
		2
		" InterpreterProxy methodsFor: 'BitBlt support' "

		#loadBitBltFrom: (sqInt )
		#copyBits (void)
		#copyBitsFrom:to:at: (sqInt   sqInt   sqInt )

		" VM_PROXY_MINOR > 2 "
		3
		#classLargeNegativeInteger (void)
		#signed32BitIntegerFor: (sqInt )
		#signed32BitValueOf: (sqInt )
		#includesBehavior:ThatOf: (sqInt   sqInt )
		#primitiveMethod (void)

		" InterpreterProxy methodsFor: 'FFI support' "

		#classExternalAddress (void)
		#classExternalData (void)
		#classExternalFunction (void)
		#classExternalLibrary (void)
		#classExternalStructure (void)
		#ioLoadModule:OfLength: (sqInt sqInt)
		#ioLoadSymbol:OfLength:FromModule: (sqInt   sqInt   sqInt )
		#isInMemory: (sqInt )

		" VM_PROXY_MINOR > 3 "
		4
		#ioLoadFunction:From: (charPtr charPtr)
		#ioMicroMSecs (void)

		" VM_PROXY_MINOR > 4 "
		5
		#positive64BitIntegerFor: (sqLong)
		#positive64BitValueOf: (sqInt)
		#signed64BitIntegerFor: (sqLong)
		#signed64BitValueOf: (sqInt)

		" VM_PROXY_MINOR > 5 "
		6
		#isArray: (sqInt )
		#forceInterruptCheck (void)


		" VM_PROXY_MINOR > 6 "
		7
		#fetchLong32:ofObject: (sqInt  sqInt)
		#getThisSessionID (void)
		#ioFilename:fromString:ofLength:resolveAliases: (charPtr charPtr sqInt sqInt)
		#vmEndianness (void)

		8
		#internalIsImmutable: (sqInt)
		#internalIsMutable: (sqInt)
		#primitiveFailFor: (sqInt)
		#classAlien (void)
		#getStackPointer (void)
		#sendInvokeCallback:Stack:Registers:Jmpbuf: (sqInt sqInt sqInt sqInt)
		#reestablishContextPriorToCallback: (sqInt)
		#classUnsafeAlien (void)
		" New methods for proxy version 1.8 "
			
		" callbackEnter: Re-enter the interpreter loop for a callback.
			Arguments:
			callbackID: Pointer to a location receiving the callback ID
			used in callbackLeave
			Returns: True if successful, false otherwise  "
		callbackEnter: (sqIntPtr)
			
		" callbackLeave: Leave the interpreter from a previous callback
			Arguments:
			callbackID: The ID of the callback received from callbackEnter()
			Returns: True if succcessful, false otherwise. "
		callbackLeave: (sqInt)
			
		" addGCRoot: Add a variable location to the garbage collector.
			The contents of the variable location will be updated accordingly.
			Arguments:
			varLoc: Pointer to the variable location
			Returns: True if successful, false otherwise. "
		addGCRoot: (sqIntPtr)
			
		"  removeGCRoot: Remove a variable location from the garbage collector.
			Arguments:
			varLoc: Pointer to the variable location
			Returns: True if successful, false otherwise. "
		removeGCRoot: (sqIntPtr)
	)
