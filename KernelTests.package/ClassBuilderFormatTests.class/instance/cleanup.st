utilities
cleanup
        (subClass isNil or: [ subClass isObsolete ]) ifFalse:[ subClass removeFromSystem ].
        (baseClass isNil or: [ baseClass isObsolete ]) ifFalse: [ baseClass removeFromSystem ].
        (Smalltalk organization listAtCategoryNamed: self categoryNameForTemporaryClasses) isEmpty
                ifTrue: [Smalltalk organization removeCategory: self categoryNameForTemporaryClasses]