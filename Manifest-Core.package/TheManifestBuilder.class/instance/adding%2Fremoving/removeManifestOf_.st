removeManifestOf: aItem
	
	(self manifestOf: aItem) ifNotNil: [ :manifest | 
			self removeClass: manifest ]