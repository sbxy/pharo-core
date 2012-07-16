protocol
renameAGroup: aGroup

	| entry |
	entry := UIManager default request: 'New name of the group' initialAnswer: aGroup name title: 'Rename a group'.
	(entry isNil or: [entry isEmpty]) ifTrue: [^ aGroup].
	(self includesAGroupNamed: entry)
		ifTrue: [ ^ self openError ].
	aGroup isReadOnly
		ifTrue: [ ^ self openReadOnlyError ].
	aGroup name: entry.
	GroupAnnouncer announcer announce: ( AGroupHasBeenRenamed group: aGroup from: self ).
	^ aGroup	