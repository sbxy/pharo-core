classListMenu: aMenu shifted: shifted
	"Set up the menu to apply to the receiver's class list, honoring the #shifted boolean"

	shifted
		ifTrue:
			[^ self shiftedClassListMenu: aMenu].
	aMenu addList: #(
		-
		('Browse full (b)'			browseMethodFull)
		('Browse hierarchy (h)'		spawnHierarchy)
		-
		('FileOut'					fileOutClass)
		-
		('Show hierarchy'			hierarchy)
		('Show definition'			editClass)
		('Show comment'			editComment)
		-
		('Inst var refs...'			browseInstVarRefs)
		('Inst var defs...'			browseInstVarDefs)
		-
		('Class var refs...'			browseClassVarRefs)
		('Class vars'					browseClassVariables)
		('Class refs (N)'				browseClassRefs)
		-
		('Rename class ...'			renameClass)
		('Copy class'				copyClass)
		('Remove class (x)'			removeClass)
		-
		('Find method...'				findMethod)
		('Find method wildcard...'	findMethodWithWildcard)
		-
		('More...'					offerShiftedClassListMenu)).
	^ aMenu
