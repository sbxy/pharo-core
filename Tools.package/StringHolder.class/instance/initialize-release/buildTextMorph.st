buildTextMorph

	^PluggableTextMorph 
			on: self 
			text: #contents 
			accept: #acceptContents:
			readSelection: nil 
			menu: #codePaneMenu:shifted:
			