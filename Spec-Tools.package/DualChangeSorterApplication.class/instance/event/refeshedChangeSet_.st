refeshedChangeSet: changeSet

	isRefreshing
		ifFalse: [
			isRefreshing := true.
			changeSet updateChangesList.
			isRefreshing := false ]