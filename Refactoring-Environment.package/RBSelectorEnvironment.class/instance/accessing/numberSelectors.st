numberSelectors
	"This doesn't compute the correct result when a method that is included in our method list is not in the
	environment we are wrapping. It is implemented this way for efficiency."

	^(classSelectors inject: 0 into: [:sum :each | sum + each size]) 
		+ (metaClassSelectors inject: 0 into: [:sum :each | sum + each size])