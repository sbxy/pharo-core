isGPNRegister: reg

	"answer true if given register is native general purpose register,
	matching the target native size i.e. 32 bits for x86 or 64 bits for x64"
	^ reg isGeneralPurpose and: [ reg size = 4 ]