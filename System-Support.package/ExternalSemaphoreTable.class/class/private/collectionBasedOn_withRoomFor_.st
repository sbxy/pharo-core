collectionBasedOn: externalObjects withRoomFor: anObject
	"Called if no slots to put anObject in have been found in externalObjects "
	"Return a externalObject collection which does, either:
		- Same collection with some slots freed up by finalization logic
		- A larger array, which has replaced the parameter as canonical externalObject array.
	An error must be raised if this method is incapable of fulfilling its duties"
	
	| newObjects newSize |
	"grow linearly"
	newSize :=  externalObjects size +20.
	(self freedSlotsIn: externalObjects ratherThanIncreaseSizeTo: newSize) 
		ifTrue: [newObjects := externalObjects]
		ifFalse: [
			newObjects := externalObjects species new: newSize. 
			newObjects replaceFrom: 1 to:  externalObjects size with: externalObjects startingAt: 1.	
			self unprotectedExternalObjects: newObjects.].
	^newObjects