prohibitsRex
"This test is used to validate if operand(s) is valid.. but reserve temp could not have an operand assigned yet and validation 
can be only performed at instruction analyzis stage (right before emitting the code), but not at instruction creation time"
	self flag: #todo. 
	^ false