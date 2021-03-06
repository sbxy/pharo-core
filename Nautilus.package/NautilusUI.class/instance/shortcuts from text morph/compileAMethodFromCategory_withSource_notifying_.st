compileAMethodFromCategory: aCategory withSource: aString notifying: aController

	| category selector class scroll method|
	category := aCategory.
	class := self selectedClass ifNil: [ ^ Error signal: 'Should not happen!' ].
	scroll := sourceTextArea scrollValue y.
	(category = self noMethodsString or: [ category = self allLabel ])
		ifTrue: [ category := self asYetUnclassifiedString ].
	
	"sourceTextArea update: #clearUserEdits."
	selector := self compileANewMethodInClass: class categorized: category from: aString notifyng: aController.
	
	selector ifNil: [ ^ sourceTextArea hasUnacceptedEdits: true ].
	method := (class methodNamed: selector).
	
	sourceTextArea update: #clearUserEdits.
	sourceTextArea vScrollValue: scroll.
	"self selectedCategory: cat."
	"methodsTree setSelectedNodeItem: method."
	( self selectedMethod notNil and: [(self selectedClass = class) and: [ self selectedMethod selector = selector]])
		ifFalse: [
			self selectedMethod: method.
			self update.
			sourceTextArea vScrollValue: scroll.]