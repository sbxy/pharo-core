ui process
spawnNewProcess

	UIProcess := [
		[World doOneCycle.  Processor yield.  false] whileFalse: [].
	] newProcess priority: Processor userSchedulingPriority.
	UIProcess name: 'Morphic UI process'.
	UIProcess resume