testRelativePath

	#('a' 'bin\foo' 'temp\test' '\test\bar') do: [:each |
		self assert: (WindowsStore current pathFromString: each) isRelative ] 
	