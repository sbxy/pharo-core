openAsMorph 
	| window aTextMorph |
	window := (SystemWindow labelled: 'later')
				model: self.

	self deferredMessageRecipient: WorldState.
	window
		addMorph: ((PluggableListMorph
				on: self
				list: #processNameList
				selected: #processListIndex
				changeSelected: #processListIndex:
				menu: #processListMenu:
				keystroke: #processListKey:from:)
				enableDragNDrop: false)
		frame: (0 @ 0 extent: 0.5 @ 0.5).
	window
		addMorph: ((PluggableListMorph
				on: self
				list: #stackNameList
				selected: #stackListIndex
				changeSelected: #stackListIndex:
				menu: #stackListMenu:
				keystroke: #stackListKey:from:)
				enableDragNDrop: false)
		frame: (0.5 @ 0.0 extent: 0.5 @ 0.5).
	aTextMorph := PluggableTextMorph
				on: self
				text: #selectedMethod
				accept: nil
				readSelection: nil
				menu: nil.
	aTextMorph askBeforeDiscardingEdits: false.
	aTextMorph font: StandardFonts codeFont.
	window
		addMorph: aTextMorph
		frame: (0 @ 0.5 corner: 1 @ 1).
	window setUpdatablePanesFrom: #(#processNameList #stackNameList ).
	(window setLabel: 'Process Browser') openInWorld.
	self mayBeStartCPUWatcher.
	^ window