buildTextMorph 
	| morph |
	
	morph := PluggableTextMorph 
					on: self 
					text: #contents 
					accept: #acceptContents:
					readSelection: nil 
					menu: #codePaneMenu:shifted:.
	
	morph font: StandardFonts codeFont.
	morph styler workspace: self.
	
	^ morph