maxListSize

	maxListSize ifNil: [maxListSize := self defaultMaxListSize].
	^maxListSize