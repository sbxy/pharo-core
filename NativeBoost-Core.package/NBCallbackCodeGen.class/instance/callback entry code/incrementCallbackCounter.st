incrementCallbackCounter

	"increment callback counter value"
	asm mov: NativeBoost forCurrentPlatform callbackCounterAddress asUImm32 to: EAX.
	asm inc: EAX ptr32.
	