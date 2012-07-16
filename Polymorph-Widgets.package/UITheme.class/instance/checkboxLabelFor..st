label-styles
checkboxLabelFor: aCheckbox
	"Answer the label to use for the given checkbox."

	|label|
	label := self checkboxLabelForText: aCheckbox label.
	(label respondsTo: #enabled:) ifTrue: [
		label enabled: aCheckbox enabled].
	label font: self labelFont.
	^label