registerToMCAnnouncements

	SystemAnnouncer uniqueInstance weak
		on: MCWorkingCopyCreated send: #mcWorkingCopyCreated: to: self;
		on: MCWorkingCopyDeleted send: #mcWorkingCopyDeleted: to: self