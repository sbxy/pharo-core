registerListShortcutsFor: aWidget

	aWidget bindKeyCombination: $b command toAction: [ self browseMethod ].
	aWidget bindKeyCombination: $i command toAction: [ self inspectMethod ].
	aWidget bindKeyCombination: $m command toAction: [ self browseMessages ].
	aWidget bindKeyCombination: $n command toAction: [ self browseSendersOfMessage ].
	aWidget bindKeyCombination: $n shift command toAction: [ self browseClassRefs ].
	aWidget bindKeyCombination: $v command toAction: [ self browseVersions ].
	aWidget bindKeyCombination: $x command toAction: [ self removeMethods ].