canChangeLockFor: source

	^ source locked or: [ self selectedMethod isNil not ]