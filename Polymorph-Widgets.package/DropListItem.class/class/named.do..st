instance creation
named: label do: aBlock

	^ self new
		action: aBlock;
		label: label;
		yourself