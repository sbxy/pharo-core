on: anAnnouncementClass do: aValuable
	"This method is deprecated!
	Declare that when anAnnouncementClass is raised, aValuable is executed.
	In addition pay attention that ushc method as well as when:do: should not be used on weak announcer since the
	block holds the receiver and more strongly."
	
	^ self when: anAnnouncementClass do: aValuable