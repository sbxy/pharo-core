< comparand
	"comparand conforms to protocol DateAndTime,
	or can be converted into something that conforms."
	| other utcSeconds otherUTCSeconds |
	other := comparand asDateAndTime.
	
	self julianDayNumberUTC < other julianDayNumberUTC
		ifTrue: [ ^ true ].
	
	utcSeconds := self asSeconds.
	otherUTCSeconds := other asSeconds.
	
	^ utcSeconds = otherUTCSeconds 
		ifFalse: [ utcSeconds < otherUTCSeconds ]
		ifTrue: [ nanos < other nanoSecond ]