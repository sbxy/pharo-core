accessing
defaultHelpBrowser
	DefaultHelpBrowser isNil ifTrue: [DefaultHelpBrowser := self].
	^DefaultHelpBrowser
	