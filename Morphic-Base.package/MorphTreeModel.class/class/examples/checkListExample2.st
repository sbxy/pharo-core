checkListExample2
	"self checkListExample2"
	| model |
	model := self new rootItems: Morph methods.
	model
		 wrapBlockOrSelector: #selector;
		 autoMultiSelection: true;
		 headerLabel: 'Plop';
		 beCheckList.
	^ (model openDialogWindowIn: World title: 'All Morph methods')
