tests extending
testUnregistrationExtendingPackages
	"self debug: #testUnregistrationExtendingPackages"

	| p |
	p := self pointRectangleInGraphElement.
	self packageOrganizer
		registerExtendingPackage: p
		forClass: Quadrangle.
	self deny: (self packageOrganizer extendingPackagesOf: Quadrangle) isEmpty.
	self assert: (self packageOrganizer extendingPackagesOf: Quadrangle) anyOne name = #GraphElement.
	self packageOrganizer
					unregisterExtendingPackage:  p
					forClass: Quadrangle.
	self assert: (self packageOrganizer extendingPackagesOf: Quadrangle) isEmpty.
	