localHostName
	"Return the local name of this host."
	"NetNameResolver localHostName"

	| hostName |
	hostName := NetNameResolver
		nameForAddress: self localHostAddress
		timeout: 5.
	^hostName
		ifNil: [self localAddressString]
		ifNotNil: [hostName]