visitAssignmentNode: anAssignmentNode
	| value variable |
	
	value := self interpret: anAssignmentNode value.
	variable := anAssignmentNode variable.
	variable binding accept: self assign: value inNode: variable.
	
	^ value