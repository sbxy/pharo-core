update30747
	"self new update30747"
	self withUpdateLog: '12822 CategoryAdded announced twice when a class is created
	https://pharo.fogbugz.com/f/cases/12822

12803 SimulationGuardException is not referenced and should therefore be moved to "Deprecated" package
	https://pharo.fogbugz.com/f/cases/12803

'.
	self loadTogether: self script400 merge: false.
	self flushCaches.
