update: aParameter 

	|state|
	aParameter  ifNil: [^self].
	getLabelSelector ifNotNil: [	aParameter == getLabelSelector ifTrue: [ self label: (model perform: getLabelSelector) ]].
	state := self getModelState.
	(state ~= (self valueOfProperty: #lastState) or: [
	getStateSelector isNil and: [aParameter == #onOffColor]])
		ifTrue: [self color: self colorToUse.
				self setProperty: #lastState toValue: state].
	aParameter == getEnabledSelector ifTrue: [^self enabled: (model perform: getEnabledSelector)].
	getColorSelector ifNotNil: [ | cc |
		color = (cc := model perform: getColorSelector) 
			ifFalse: [
				color := cc.
				self onColor: color offColor: color.
				self changed ]].
		
	aParameter isArray ifFalse: [ ^ self ].
	aParameter size == 2 ifFalse: [ ^ self ].
	
	aParameter first = #askBeforeChanging: ifTrue: [ self askBeforeChanging: aParameter second ]