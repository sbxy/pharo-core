item creation
buildCategoriesList

	^ categoriesList := PluggableIconListMorph new
							resetListSelector: #resetCategoriesListSelection;
							keystrokeSelector: #keyPressedOnCategory:;
							autoDeselect: true;
							getListSizeSelector: #categoryListSize;
							
							dropItemSelector: #dropMethod:inARow:;
							dragEnabled: true; dropEnabled: true;
							hResizing: #spaceFill;
							vResizing: #spaceFill;
							
							model: self;
							getIndexSelector: #selectedCategoryIndex;
							setIndexSelector: #selectedCategoryIndex:;
							getSelectionListSelector: #categorySelectionAt:;
							setSelectionListSelector: #categorySelectionAt:put:;
							getMenuSelector: #categoriesMenu:shifted:;
							beMultipleSelection;
							
							getListElementSelector: #getCategoryItem:;
							attachKeymapCategory: #NautilusGlobalShortcuts targetting: self model;
							wrapSelector: #categoryWrapper:.