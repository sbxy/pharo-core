regularDiffButton
	"Return a checkbox that lets the user decide whether regular diffs should be shown or not"

	^self theme builder
		newCheckboxFor: self
		getSelected: #showingRegularDiffs
		setSelected: #toggleRegularDiffing
		label: 'diffs' translated
		help: 'If checked, then code differences from the previous version, if any, will be shown.' translated
