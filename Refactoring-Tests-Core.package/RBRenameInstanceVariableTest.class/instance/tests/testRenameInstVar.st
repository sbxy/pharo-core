testRenameInstVar
	| refactoring class |
	refactoring := RBRenameInstanceVariableRefactoring 
		rename: 'classBlock'
		to: 'asdf'
		in: RBBasicLintRuleTest.
	self executeRefactoring: refactoring.
	class := refactoring model classNamed: #RBBasicLintRuleTest.
	self assert: (class directlyDefinesInstanceVariable: 'asdf').
	self deny: (class directlyDefinesInstanceVariable: 'classBlock').
	self assert: (class parseTreeFor: #checkClass:) = (RBParser parseMethod: 'checkClass: aSmalllintContext 
								^asdf value: aSmalllintContext value: result').
	self assert: (class parseTreeFor: #classBlock:) = (RBParser parseMethod: 'classBlock: aBlock
								asdf := aBlock testMethod1').
	self assert: (class parseTreeFor: #initialize) = (RBParser parseMethod: 'initialize
								super initialize.
								asdf := [:context :aResult | ].
								methodBlock := [:context :aResult | ].
								self resultClass: RBSelectorEnvironment.')