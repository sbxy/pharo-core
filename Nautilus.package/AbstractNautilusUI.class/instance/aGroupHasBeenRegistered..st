group announcements
aGroupHasBeenRegistered: anAnnouncement
	 "(NautilusUI methodDict at: #aGroupHasBeenRegistered:) getSource"

	| group |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [^ self ].
	self showGroups ifFalse: [ ^ self ].
	group := anAnnouncement group.
	(self groupsManager includes: group)
		ifTrue: [ self updateGroupView ]