keyStroke: evt
	"Check for close window."
	super keyStroke: evt.
	(self navigationKey: evt) ifTrue: [^true].
	(evt commandKeyPressed and: [
			evt keyCharacter = Character delete or: [
				evt keyCharacter = $w]])  ifTrue: [
		self delete.
		^true].
	^false