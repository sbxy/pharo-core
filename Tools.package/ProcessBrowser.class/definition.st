Model subclass: #ProcessBrowser
	instanceVariableNames: 'selectedProcess selectedContext methodText processList processListIndex stackList stackListIndex selectedClass selectedSelector searchString autoUpdateProcess deferredMessageRecipient lastUpdate startedCPUWatcher keyEventsDict'
	classVariableNames: 'SuspendedProcesses WellKnownProcesses'
	poolDictionaries: ''
	category: 'Tools-Process Browser'