openOnClass: aClass onProtocol: aProtocol inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance 
		browsedEnvironment: anEnvironment;
		showInstance: aClass isMeta not;
		selectedCategory: aProtocol;
		package: aClass package class: aClass category: nil method: nil;
		open.
	instance ui 
		showPackages: (self switchClassesAndPackages not).
	instance ui 
		selectedCategory: aProtocol;
		categorySelectionChanged;
		changed: #currentHistoryIndex.
	^ instance