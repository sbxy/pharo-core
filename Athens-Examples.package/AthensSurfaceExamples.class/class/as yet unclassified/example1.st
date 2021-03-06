example1

"
self subclasses anyOne example1
"
	| surf |
	
	surf := self newSurface: 100@100.
	
	surf drawDuring: [:can |
		surf clear.
		can pathTransform loadIdentity.
		can pathTransform translateX: 30 Y: 30.
		can pathTransform rotateByDegrees: 35.
		can setPaint: (Color red).
		
		can setShape: (-20@ -20 corner: 20@ 20).
		2 timesRepeat: [ can draw. can setPaint: (Color green alpha:0.5)]
	].
	Display getCanvas drawImage: 	surf asForm  at: 0@0
