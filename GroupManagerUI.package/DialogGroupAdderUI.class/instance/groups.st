tree
groups

	^ self groupManager groups groups select: [:group | group isFillable & group isReadOnly not ]