addSlice
	(MCSliceMaker openFor: self window)
		ifNotNil: [:sliceInfo | workingCopy := sliceInfo makeSlice.
			workingCopy ifNotNil: [
				workingCopy repositoryGroup 
					addRepository: ScriptLoader new repository;
					addRepository: ScriptLoader new inboxRepository.
				workingCopyWrapper := MCDependentsWrapper with: workingCopy model: self.
					self repositorySelection: 0.]].
	self workingCopyListChanged; changed: #workingCopySelection; repositoryListChanged.
	self changedButtons.
