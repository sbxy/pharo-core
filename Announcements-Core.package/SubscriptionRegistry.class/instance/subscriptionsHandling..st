accessing
subscriptionsHandling: anAnnouncement
	^ Array streamContents: [ :s|
			subscriptions do: [:each| 
				(each handles: anAnnouncement class)
					ifTrue: [ s nextPut: each ]]]