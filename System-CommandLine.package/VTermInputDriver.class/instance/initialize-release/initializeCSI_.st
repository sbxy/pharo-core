initializeCSI: actions
	actions at: $A put: [ handler up ].
	actions at: $B put: [ handler down ].
	actions at: $C put: [ handler right ].
	actions at: $D put: [ handler left ].
	actions at: $E put: [ handler here ].
	actions at: $F put: [ handler pageUp ].
	actions at: $H put: [ handler pageDown ].
	
	actions at: 1 put: [ handler find ].
	actions at: 2 put: [ handler insert ].
	actions at: 3 put: [ handler remove ].
	actions at: 4 put: [ handler select ].
	actions at: 5 put: [ handler previousScreen ].
	actions at: 6 put: [ handler nextScreen ].
	
	actions at: 15 put: [ handler functionKey: 5 ].
	actions at: 17 put: [ handler functionKey: 6 ].
	actions at: 18 put: [ handler functionKey: 7 ].
	actions at: 19 put: [ handler functionKey: 8 ].
	actions at: 20 put: [ handler functionKey: 9 ].
	actions at: 21 put: [ handler functionKey: 10 ].
	actions at: 23 put: [ handler functionKey: 11 ].
	actions at: 24 put: [ handler functionKey: 12 ].
	actions at: 25 put: [ handler functionKey: 13 ].
	actions at: 26 put: [ handler functionKey: 14 ].
	actions at: 28 put: [ handler functionKey: 15 ].
	actions at: 29 put: [ handler functionKey: 16 ].
	actions at: 31 put: [ handler functionKey: 17 ].
	actions at: 32 put: [ handler functionKey: 18 ].
	actions at: 33 put: [ handler functionKey: 19 ].
	actions at: 34 put: [ handler functionKey: 20 ].
	
	actions at: $[ put: [ self readCSI ].