new

	| instance |
	instance := self basicNew initialize.
	GroupAnnouncer uniqueInstance announce: (AGroupHasBeenCreated group: instance).
	^ instance