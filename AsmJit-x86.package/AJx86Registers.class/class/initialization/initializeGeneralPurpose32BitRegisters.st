initializeGeneralPurpose32BitRegisters
	"initialize general purpose 32 bit registers "

	self
		registerBase: 16r20
			class: AJx86GPRegister
			rex: #dontCare
			values: #(#EAX #ECX #EDX #EBX #ESP #EBP #ESI #EDI);
		registerBase: 16r28
			class: AJx86GPRegister
			rex: #required
			values: #(#R8D #R9D #R10D #R11D #R12D #R13D #R14D #R15D)