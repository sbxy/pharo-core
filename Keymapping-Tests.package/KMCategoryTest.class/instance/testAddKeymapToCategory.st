as yet unclassified
testAddKeymapToCategory
	| categoryToAdd entry |
	categoryToAdd := KMCategory named: #TestCategory.
	entry := KMKeymap named: #Foo shortcut: $a asShortcut, $b asShortcut, $c asShortcut action: [ "nothing" ].

	self assert: (categoryToAdd allEntries) size = 0.
	categoryToAdd addKeymapEntry: entry.
	self assert: (categoryToAdd allEntries) size = 1.