initialize
	
	super initialize.
	cache := CriticsCache new.
	checker := SmalllintManifestChecker new.
	cache checker: checker.
	cache browser: self. 
	criticModel cache: cache.	
		



