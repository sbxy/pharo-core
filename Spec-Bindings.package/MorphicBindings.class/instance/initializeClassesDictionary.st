initialization
initializeClassesDictionary

	^ IdentityDictionary new
		at: #List 				put: #PluggableListMorph;
		at: #IconList 			put: #PluggableIconListMorph;
		at: #Text 				put: #PluggableTextMorph;
		at: #Button 			put: #PluggableButtonMorph;
		at: #Panel 				put: #PanelMorph;
		at: #Checkbox 			put: #CheckboxMorph;
		at: #DropList 			put: #DropListMorph;
		at: #TextField 			put: #PluggableTextFieldMorph;
		at: #Label 				put: #LabelMorph;
		at: #MultiColumnList 	put: #PluggableMultiColumnListMorph;
		at: #Tree				put: #PluggableTreeMorph;
		at: #FrameLayout		put: #LayoutFrame;
		yourself