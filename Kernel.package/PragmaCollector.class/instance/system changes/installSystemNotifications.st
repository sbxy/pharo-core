installSystemNotifications
	"Allows myself to be kept up-to-date regarding system changes"
	
	SystemAnnouncer uniqueInstance unsubscribe: self.
	
	SystemAnnouncer uniqueInstance weak
			on: ClassRemoved send: #classRemovedEventOccurs: to: self;
			on: MethodRemoved send: #removedEventOccurs: to: self;
			on: MethodAdded send: #addedEventOccurs: to: self;
			on: MethodModified send: #modifiedEventOccurs: to: self