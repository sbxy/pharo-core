getPreferencesList

	preferenceList ifNotNil: [ ^ preferenceList ].
	^ preferenceList := {	self sourceItem.
		self byteCodeItem.
		self diffItem.
		self versionItem.
		self infoItem. 	}