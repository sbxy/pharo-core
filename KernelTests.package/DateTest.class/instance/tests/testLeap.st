testLeap

	| dateInLeapYear dateInNonLeapYear |
	dateInLeapYear := january23rd2004.
	dateInNonLeapYear := dateInLeapYear + 365 days.
	self assert: dateInLeapYear leap equals: 1.
	self assert: dateInNonLeapYear leap equals: 0.


