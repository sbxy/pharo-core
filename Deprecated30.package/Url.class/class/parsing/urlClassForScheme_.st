urlClassForScheme: scheme

	^ self allSubclasses
				detect: [ :urlClass | urlClass schemeName = scheme ]
				ifNone: [ GenericUrl ].