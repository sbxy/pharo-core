referencesToSelection
	"Open a browser on all references to the selected instance variable, if that's what's currently selected."
	| aClass sel |

	(aClass := self parentObject class) isVariable ifTrue: [^ self changed: #flash].
	sel := self selector.
	self systemNavigation browseAllAccessesTo: sel from: aClass