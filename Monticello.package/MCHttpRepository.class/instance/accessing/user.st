user
	self userAndPasswordFromSettingsDo: [:usr :pwd | ^usr].
	"not in settings"
	user isEmptyOrNil ifFalse: [ ^user ].
	
	#UserManager asClassIfPresent: [ :userManager |
		(userManager default currentUser userNamePasswordFor: self keyChainGroupSelector)
			ifNotNil: [ :usr | 
				^ usr username ]].
	^ ''