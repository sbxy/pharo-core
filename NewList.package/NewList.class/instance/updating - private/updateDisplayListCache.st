updateDisplayListCache

	"self runningProcesses do: [:e | e ifNotNil: [:process | process terminate ]]."
	displayListCache value: (Array new: self listSize).
	self runningProcesses: (Array new: self listSize).