menu: menu shifted: b 
	"Set up the menu to apply to the receiver's, 
	honoring the #shifted boolean"
	menu
		add: 'Expand all (a)' translated
		target: self
		selector: #expandAll. 
	menu
		add: 'Collapse all (A)' translated
		target: self 
		selector: #collapseAll.
	self selectedNode
		ifNotNil: [:current | 
			menu
				add: 'Expand all from here' translated
				target: self
				selector: #expandAllFromNode:
				argument: current.
			menu addLine.
			current menu: menu shifted: b].
	self selectedNode
		ifNotNil: [:current |
			current settingDeclaration hasDefault
				ifTrue: [
					menu addLine.
					menu
						add: 'Set to default (d)' translated
						target: self
						selector: #menuSetToDefault:
						argument: current].
			current settingDeclaration hasEditableList
				ifTrue: [
					current settingDeclaration hasDefault
						ifFalse: [  menu addLine ].
					menu
						add: 'Empty list (e)' translated
						target: self
						selector: #menuEmptyList:
						argument: current]].
	^ menu