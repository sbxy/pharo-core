initialize

	super initialize.

	bindingsRtoMC := IdentityDictionary new.
	bindingsMCtoR := IdentityDictionary new.
	self registerToMCAnnouncements.