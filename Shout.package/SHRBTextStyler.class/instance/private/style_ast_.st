style: aText ast: ast
	| oldRuns |

	oldRuns := aText runs.
	text := aText.	
	charAttr := Array new: aText size withAll: (self attributesFor: #default).
	ast acceptVisitor: self .
	aText runs: (RunArray newFrom: charAttr).	
	self 
		addAttributesFrom: oldRuns 
		satisfying: [:each | each shoutShouldPreserve] 
		to: aText.
		