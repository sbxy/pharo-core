tests-globals
testConsiderCustomGlobal
	"A custom global variable is treated as global by Fuel, when we explicitly specify this."
	
	| aPerson |
	self analyzer considerGlobal: #FLGlobalVariableForTesting.

	aPerson := FLPerson new.
	Smalltalk globals at: #FLGlobalVariableForTesting put: aPerson.
	
	self assertSerializationIdentityOf: aPerson.