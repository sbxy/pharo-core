getProcessorArchitecture
	"Return processor chip architecture. Values: x86, IA64.
	
		self getProcessorArchitecture
	"
	
	^self getEnvironmentVariable: 'PROCESSOR_ARCHITECTURE'