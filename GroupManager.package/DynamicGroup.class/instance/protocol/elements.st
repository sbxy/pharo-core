elements

	^ (self blocks gather: [:block | block value]) copy asOrderedCollection removeDuplicates