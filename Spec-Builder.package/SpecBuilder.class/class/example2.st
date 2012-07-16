experimentation
example2
	| d spec desc |
	d := ComposableModelDescription new addClassNamed: 'NewClass2' categorized: 'Spec-Builder'.

	InstVarSetter new
		description: d;
		openWithSpec.
		
	SpecSetter new
		description: d;
		openWithSpec.
		
	d finalize.
	spec := (Smalltalk at: #NewClass2) generatingSpec.
	desc := (SpecImporter import: spec).

	desc finalize