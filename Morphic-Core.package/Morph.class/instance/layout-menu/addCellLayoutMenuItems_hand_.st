addCellLayoutMenuItems: aMenu hand: aHand
	"Cell (e.g., child) related items"
	| menu sub |
	menu := UIManager default newMenuIn: self for: self.
		menu addUpdating: #hasDisableTableLayoutString action: #changeDisableTableLayout.
		menu addLine.

		sub := UIManager default newMenuIn: self for: self.
		#(rigid shrinkWrap spaceFill) do:[:sym|
			sub addUpdating: #hResizingString: target: self selector: #hResizing: argumentList: (Array with: sym)].
		menu add:'horizontal resizing' translated subMenu: sub.

		sub := UIManager default newMenuIn: self for: self.
		#(rigid shrinkWrap spaceFill) do:[:sym|
			sub addUpdating: #vResizingString: target: self selector: #vResizing: argumentList: (Array with: sym)].
		menu add:'vertical resizing' translated subMenu: sub.

	aMenu ifNotNil:[aMenu add: 'child layout' translated subMenu: menu].
	^menu