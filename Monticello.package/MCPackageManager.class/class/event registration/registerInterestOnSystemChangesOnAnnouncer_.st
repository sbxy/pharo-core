registerInterestOnSystemChangesOnAnnouncer: anAnnouncer
	anAnnouncer on: ClassAdded, ClassModifiedClassDefinition, ClassRenamed, ClassCommented send: #classModified: to: self.
	anAnnouncer on: ClassRepackaged send: #classMoved: to: self.
	anAnnouncer on: ClassRemoved send: #classRemoved: to: self.
	anAnnouncer on: MethodAdded, MethodModified, MethodRecategorized send: #methodModified: to: self.
	anAnnouncer on: MethodRepackaged send: #methodMoved: to: self.
	anAnnouncer on: MethodRemoved send: #methodRemoved: to: self.