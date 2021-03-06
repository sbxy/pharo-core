superclassOrder: classes
	"Arrange the classes in the collection, classes, in superclass order so the 
	classes can be properly filed in. Do it in sets instead of ordered collections."

	| all unprocessedClasses cache |

	unprocessedClasses := classes asSet. 
	cache := Dictionary new.
	all := OrderedCollection new: unprocessedClasses size.
	unprocessedClasses size timesRepeat: [ |nextClass|
		nextClass := unprocessedClasses detect: [:aClass | self hasNoDependenciesFor: aClass in: unprocessedClasses cache: cache].
		all add: nextClass.
		unprocessedClasses remove: nextClass].
	^all