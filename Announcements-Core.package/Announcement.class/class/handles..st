testing
handles: anAnnouncementClass
	^ anAnnouncementClass == self or: [ anAnnouncementClass inheritsFrom: self ]