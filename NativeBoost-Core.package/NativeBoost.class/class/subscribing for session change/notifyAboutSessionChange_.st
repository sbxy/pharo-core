notifyAboutSessionChange: anObject
	"register an object to be notified about session change"
	self announcer weak on: NBSessionChangeAnnouncement send: #nbSessionChanged  to: anObject
