pharo - updates
update20251
	"self new update20251"
	self withUpdateLog: 'Issue 6559:	RPackage importing does not honor class side extension methods
	http://code.google.com/p/pharo/issues/detail?id=6559
	
Issue 6558:	CompiledMethod>>#package does not resolve well with Class side methods
	http://code.google.com/p/pharo/issues/detail?id=6558
	
Issue 6450:	typo exitSucess
	http://code.google.com/p/pharo/issues/detail?id=6450'.
	self loadTogether: self script238 merge: false.
	self flushCaches.