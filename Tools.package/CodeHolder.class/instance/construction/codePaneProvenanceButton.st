codePaneProvenanceButton
	"Answer a button that reports on, and allow the user to modify,
	the code-pane-provenance setting"
	
	^(self theme  builder
		newDropListFor: self
		list: #codePaneProvenanceList
		getSelected: #codePaneProvenanceIndex
		setSelected: #codePaneProvenanceIndex:
		help: 'Select what is shown in the code pane' translated)
			cornerStyle: (self theme buttonCornerStyleIn: nil);
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			minWidth: 88