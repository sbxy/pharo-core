setActionsForButton2

	button2 whenActivatedDo: [ container addMorph: morph2 ].
	button2 whenDesactivatedDo: [ container removeMorph: morph2 ]