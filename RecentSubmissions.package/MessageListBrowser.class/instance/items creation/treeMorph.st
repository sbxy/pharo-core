treeMorph
	^ super defaultTreeMorph
			doubleClickSelector: #doubleClick;
			autoDeselection: true;
			getMenuSelector: #menu:shifted:
