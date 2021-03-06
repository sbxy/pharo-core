openAsMorphMsgCatEditing: editString
	"Create a pluggable version a Browser on just a message category."

	| window hSepFrac |
	window := (SystemWindow labelled: 'later') model: self.
	hSepFrac := 0.3.
	window 
		addMorph: ((PluggableListMorph on: self list: #messageCatListSingleton
			selected: #indexIsOne changeSelected: #indexIsOne:
			menu: #messageCategoryMenu:) enableDragNDrop: true)
		fullFrame: (  (0@0 corner: 1@0) asLayoutFrame bottomOffset: 25).
	window 
		addMorph: self buildMorphicMessageList
		fullFrame: ((0@0 corner: 1@hSepFrac) asLayoutFrame topOffset: 0@25).

	self 
		addLowerPanesTo: window 
		at: (0@hSepFrac corner: 1@1) 
		with: editString.
	window setUpdatablePanesFrom: #(messageCatListSingleton messageList).
	^ window