longDescription 
	^ 'Moving assignements outside blocks leads to shorter and more efficient code.
For example:
test 
	ifTrue: [var := 1]
	ifFlase: [var:= 2]
is equivalent to:
var :=  test 
	ifTrue: [1]
	ifFlase: [2]'