repositoryList
	|repositories|
	repositories := self repositories.

	^ repositories collect: [:ea | ea description]