scrollPaneNormalBorderStyleFor: aScrollPane
	"Return the normal borderStyle for the given scroll pane."


	^  SimpleBorder new 
			color: (Color black alpha: 0.2);
			width: 1.
	