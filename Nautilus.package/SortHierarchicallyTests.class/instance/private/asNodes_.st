asNodes: classCollection

	^classCollection collect: [:cl | SortHierarchicallyNode on: cl]