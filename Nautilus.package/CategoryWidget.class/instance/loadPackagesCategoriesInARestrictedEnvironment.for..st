private
loadPackagesCategoriesInARestrictedEnvironment: env for: class
	| group |
	
	group := self model selectedGroup.
	^ self loadCategoriesWithProtocols: (model browsedEnvironment protocolsFor: class) forClass: class