initialize
	"self initialize "	
	soleInstance ifNotNil: [ NativeBoost announcer unsubscribe: soleInstance. soleInstance initialize ]. 
	soleInstance := self new.
	"be notified about session change"
	NativeBoost notifyAboutSessionChange: soleInstance