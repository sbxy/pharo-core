mcWorkingCopyDeleted: anAnnouncement
	| package rpackages |
	
	package := anAnnouncement package.
	package ifNil: [ ^ self ].
	rpackages := bindingsMCtoR at: package ifAbsent: [ ^self ].
	rpackages do: [:rpackage | bindingsRtoMC removeKey: rpackage ifAbsent: [ ]].
	bindingsMCtoR removeKey: package ifAbsent: []