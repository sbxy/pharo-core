browseVersions
	"Browse the method versions."

	| aClass aSelector |
	aClass := self selectedChangeWrapper actualClass.
	aSelector := self selectedMessageName ifNil: [^self].
	Smalltalk tools versionBrowser 
			browseVersionsForClass: aClass selector: aSelector
			