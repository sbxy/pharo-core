openContents: aString label: aLabel
	"Open a new workspace with the given contents"
	
	^ self new
		openLabel: aLabel;
	 	contents: aString;
		changed: #contents;
		yourself