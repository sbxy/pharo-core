addPackagesAsGroupsAndBrowse

	(self addPackagesAsGroups: self selectedPackages)
		ifNotNil: [:group | 
			self selectedGroup: group.
			self showGroups: true]