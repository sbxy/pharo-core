enabled
	"Answer the enablement state of the receiver."

	^self valueOfProperty: #enabled ifAbsent: [true]