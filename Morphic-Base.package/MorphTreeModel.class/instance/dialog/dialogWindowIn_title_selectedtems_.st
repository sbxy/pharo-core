dialogWindowIn: aWindow title: aTitle selectedtems: aCollection 
	| dialog treeMorph |
	dialog := self theme
				newPluggableDialogWindowIn: aWindow
				title: aTitle
				for: (treeMorph := self defaultTreeMorph).
	treeMorph buildContents; selectedItems: aCollection.
	dialog defaultFocusMorph: treeMorph.
	dialog minimumExtent: 300 @ 500.
	dialog beResizeable.
	^ dialog 