testing
testProtocol
	"Test that we can access protocol correctly"
	"self debug: #testProtocol"

	| okCm notOkCm |
	okCm := Point>>#dist: .
	self assert: (SourceFiles sourcedDataAt: okCm sourcePointer) =  'Point methodsFor: ''point functions'' stamp: ''lr 7/4/2009 10:42'' prior: 26268465'.
	self assert: (SourceFiles protocolAt: okCm sourcePointer) = 'point functions'.
	
	notOkCm := ComposableMorph >> #newToolSpacer.
	self assert: (SourceFiles protocolAt: notOkCm sourcePointer) =  'controls'.
	