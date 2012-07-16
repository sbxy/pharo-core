as yet unclassified
systemConverterClass
	| encoding |
	OSPlatform isWin32 
		ifTrue: [^EUCKRTextConverter].
	OSPlatform isMacOS
		ifTrue: [^UTF8TextConverter].
	OSPlatform isUnix 
		ifTrue: [encoding := X11Encoding encoding.
			encoding ifNil: [^EUCKRTextConverter].
			(encoding = 'utf-8') 
				ifTrue: [^UTF8TextConverter].							
			^EUCKRTextConverter].
	^UTF8TextConverter