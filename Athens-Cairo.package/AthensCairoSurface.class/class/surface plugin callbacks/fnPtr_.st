fnPtr: anFnName

	^ NativeBoost loadSymbol: anFnName fromModule: self nbLibraryNameOrHandle.

