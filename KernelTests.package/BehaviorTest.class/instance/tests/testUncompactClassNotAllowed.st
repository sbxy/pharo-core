testUncompactClassNotAllowed
	"As explained in Behavior >> #checkCanBeUncompact certain classes cannot be uncompact, like Array"
	self should: [Array becomeUncompact] raise: Error.