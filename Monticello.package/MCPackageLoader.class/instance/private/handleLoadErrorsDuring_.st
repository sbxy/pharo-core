handleLoadErrorsDuring: aBlock
	[aBlock
		on: InMidstOfFileinNotification do: [ :notification | notification resume: true ]]
		on: SlotClassBuilderWarning do: [ :error | error resume ]