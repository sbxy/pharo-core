defer: aBlock
	" Evaluate the given Block in the UI thread as soon as there is nothing scheduled."
	WorldState defer: aBlock