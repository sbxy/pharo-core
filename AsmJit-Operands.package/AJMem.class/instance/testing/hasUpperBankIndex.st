hasUpperBankIndex
	"True iff I have an index register, and it is one of r8-r15"

	^ self hasIndex and: [ self index isUpperBank ]