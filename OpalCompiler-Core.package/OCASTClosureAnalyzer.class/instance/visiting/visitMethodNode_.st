visitMethodNode: aMethodNode
	"here look at the temps and make copying vars / tempVector out of them"

	scope := aMethodNode scope.	
	self doRemotes; doCopying.
	self visitNode: aMethodNode body.
	scope := scope popScope.