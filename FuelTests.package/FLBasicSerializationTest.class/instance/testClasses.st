tests
testClasses
	"When we serialize this way, classes should be considered as globals."
	self assertSerializationEqualityOf: Collection withAllSubclasses asArray.