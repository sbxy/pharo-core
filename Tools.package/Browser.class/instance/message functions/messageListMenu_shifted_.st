messageListMenu: aMenu shifted: shifted 
	"Answer the message-list menu"
	shifted
		ifTrue: [^ self shiftedMessageListMenu: aMenu].
	aMenu addList: #(
			('What to show...'			offerWhatToShowMenu)
			('Toggle break on entry'		toggleBreakOnEntry)
			-
			('Browse full (b)' 			browseMethodFull)
			('Browse hierarchy (h)'			classHierarchy)
			-
			('FileOut'				fileOutMessage)
			-
			('Senders of... (n)'			browseSendersOfMessages)
			('Implementors of... (m)'		browseMessages)
			('Inheritance (i)'			methodHierarchy)
			('Versions (v)'				browseVersions)
			-
			('Inst var refs...'			browseInstVarRefs)
			('Inst var defs...'			browseInstVarDefs)
			('Class var refs...'			browseClassVarRefs)
			('Class variables'			browseClassVariables)
			('Class refs (N)'			browseClassRefs)
			-
			('Remove method (x)'			removeMessage)
			-
			('More...'				shiftedYellowButtonActivity)).
	^ aMenu