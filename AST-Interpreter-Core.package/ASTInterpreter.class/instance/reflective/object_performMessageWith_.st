object: receiver performMessageWith: aMessage	
	"transform the perform:[with:with:with:] methods in perform:withArguments: understood by ast-interpreter"
	
	| arguments oldArgs newMessage|
	oldArgs := aMessage arguments.
	arguments := Array with: oldArgs first with: (Array withAll: (oldArgs copyFrom: 2 to: oldArgs size)).
	newMessage := Message selector: aMessage selector arguments: arguments.
	^ self object: receiver performMessageWithArgs: newMessage	
	