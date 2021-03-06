macTypeAndCreator
	| results typeString creatorString |
	"get the Macintosh file type and creator info for the file with the given name. Fails if the file does not exist or if the type and creator type arguments are not strings of length 4. Does nothing on other platforms (where the underlying primitive is a noop)."
	"FileDirectory default getMacFileNamed: 'foo'"

	self flag: 'TODO'.
	"
	typeString := ByteArray new: 4 withAll: ($? asInteger). #[63 63 63 63]
	creatorString := ByteArray new: 4 withAll: ($? asInteger).
	[self primGetMacFileNamed: (self fullNameFor: fileName) asVmPathName
		type: typeString
		creator: creatorString.] ensure: 
		[typeString := typeString asString. 
		creatorString := creatorString asString].
	results := Array with: typeString convertFromSystemString with: creatorString convertFromSystemString.
	^results"
