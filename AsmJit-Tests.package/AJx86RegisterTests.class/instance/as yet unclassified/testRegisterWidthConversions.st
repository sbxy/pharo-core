testRegisterWidthConversions
	"Test the generalPurpose register methods #as8, #as16, #as32, #as64. 
	Some resulting registers are not valid except in 64-bit mode, but that is not checked until you try to use the register in an instruction."

	| regs8 regs16 regs32 regs64 highByteRegs |
	regs8 := {AL.
	CL.
	DL.
	BL.
	SPL.
	BPL.
	SIL.
	DIL.
	R8B.
	R9B.
	R10B.
	R11B.
	R12B.
	R13B.
	R14B.
	R15B}.
	regs16 := {AX.
	CX.
	DX.
	BX.
	SP.
	BP.
	SI.
	DI.
	R8W.
	R9W.
	R10W.
	R11W.
	R12W.
	R13W.
	R14W.
	R15W}.
	regs32 := {EAX.
	ECX.
	EDX.
	EBX.
	ESP.
	EBP.
	ESI.
	EDI.
	R8D.
	R9D.
	R10D.
	R11D.
	R12D.
	R13D.
	R14D.
	R15D}.
	regs64 := {RAX.
	RCX.
	RDX.
	RBX.
	RSP.
	RBP.
	RSI.
	RDI.
	R8.
	R9.
	R10.
	R11.
	R12.
	R13.
	R14.
	R15}.
	highByteRegs := {AH.
	CH.
	DH.
	BH}.
	self
		assert: (regs8 collect: [ :r | r as8 ]) equals: regs8;
		assert: (regs16 collect: [ :r | r as8 ]) equals: regs8;
		assert: (regs32 collect: [ :r | r as8 ]) equals: regs8;
		assert: (regs64 collect: [ :r | r as8 ]) equals: regs8.
	self
		assert: (regs8 collect: [ :r | r as16 ]) equals: regs16;
		assert: (regs16 collect: [ :r | r as16 ]) equals: regs16;
		assert: (regs32 collect: [ :r | r as16 ]) equals: regs16;
		assert: (regs64 collect: [ :r | r as16 ]) equals: regs16.
	self
		assert: (regs8 collect: [ :r | r as32 ]) equals: regs32;
		assert: (regs16 collect: [ :r | r as32 ]) equals: regs32;
		assert: (regs32 collect: [ :r | r as32 ]) equals: regs32;
		assert: (regs64 collect: [ :r | r as32 ]) equals: regs32.
	self
		assert: (regs8 collect: [ :r | r as64 ]) equals: regs64;
		assert: (regs16 collect: [ :r | r as64 ]) equals: regs64;
		assert: (regs32 collect: [ :r | r as64 ]) equals: regs64;
		assert: (regs64 collect: [ :r | r as64 ]) equals: regs64.
	self
		assert: (highByteRegs collect: [ :r | r as8 ]) equals: highByteRegs;
		assert: (highByteRegs collect: [ :r | r as16 ])
			equals:
				{AX.
					CX.
					DX.
					BX};
		assert: (highByteRegs collect: [ :r | r as32 ])
			equals:
				{EAX.
					ECX.
					EDX.
					EBX};
		assert: (highByteRegs collect: [ :r | r as64 ])
			equals:
				{RAX.
					RCX.
					RDX.
					RBX}