decrementCallbackCounter

	"increment callback counter value"
	asm mov: NativeBoost forCurrentPlatform callbackCounterAddress asUImm32 to: EAX.
	asm dec: EAX ptr32.
	