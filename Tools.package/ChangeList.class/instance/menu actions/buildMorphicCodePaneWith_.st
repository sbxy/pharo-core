buildMorphicCodePaneWith: editString

	| codePane |
	codePane := (PluggableTextMorph
		on: self
		text: #contents 
		accept: nil
		readSelection: #contentsSelection 
		menu: #codePaneMenu:shifted:) 
		enabled: false;
		yourself.
	codePane font: StandardFonts codeFont.
	editString ifNotNil: [
		codePane editString: editString.
		codePane hasUnacceptedEdits: true ].
	^codePane
