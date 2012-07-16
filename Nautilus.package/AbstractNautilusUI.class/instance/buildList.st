items creation
buildList

	list := PluggableIconListMorph new
				wrapSelector: #listWrapper:;
				keystrokeSelector: #keyPressedOnList:shifted:;
				getIconSelector: #listIcon:;
				getListSizeSelector: #listSize;
				resetListSelector: #resetListSelection;
				autoDeselect: true;
				dropEnabled: true;
				doubleClickSelector: #doubleClick;
				dropItemSelector: #dropInList:inARow:;
				dragEnabled: true;
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				
				model: self;
				getIndexSelector: #selected;
				setIndexSelector: #selected:;
				getSelectionListSelector: #listSelectionAt:;
				setSelectionListSelector: #listSelectionAt:put:;
				getMenuSelector: #menu:shifted:;
				beMultipleSelection;
				
				getListElementSelector: #listElement:.
				
	self setGlobalShorcutsTo: list.
	
	list
		hResizing: #spaceFill;
		vResizing: #spaceFill.	
	^ list