buildMorphicCodePaneWith: editString
	
	codePane := PanelMorph new
					changeTableLayout;
					listDirection: #rigthToLeft;
					addMorph: (self buildDefaultCodePane: editString);
					hResizing: #spaceFill;
					vResizing: #spaceFill;
					yourself.
								
	^ codePane