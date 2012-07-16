private
initialize
	" self initialize "

	ClassesIconsCache := WeakIdentityKeyDictionary new.
	GroupsIconsCache := WeakIdentityKeyDictionary new.
	PackagesIconsCache := WeakIdentityKeyDictionary new.
	
	Icon := self buildIcon.
	NextFocusKey := Character arrowRight.
	PreviousFocusKey := Character arrowLeft.