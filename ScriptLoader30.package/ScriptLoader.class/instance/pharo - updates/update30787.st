update30787
	"self new update30787"
	self withUpdateLog: '13016 Skip KernelTests.Methods.BlockClosureTest.testOnForkSplit
	https://pharo.fogbugz.com/f/cases/13016

12907 TreeInspector a MetacelloMCProject gives Error: Name not found: Example-AddOn
	https://pharo.fogbugz.com/f/cases/12907

13033 LargeInteger are not compact classes any more
	https://pharo.fogbugz.com/f/cases/13033
'.
	self loadTogether: self script440 merge: false.
	Smalltalk compactClassesArray at: 4 put: nil. 
Smalltalk compactClassesArray at: 5 put: nil. 
Integer initialize.
.
	self flushCaches.
