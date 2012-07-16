history
adopt: anAssociation

	| nautilusWrapper |
	nautilusWrapper := anAssociation key.
	self ui ifNotNil: [:interface |
		interface resetSelections].
	self
		selectedPackage: nautilusWrapper selectedPackage;
		selectedClass: nautilusWrapper selectedClass;
		selectedCategory: nautilusWrapper selectedCategory.
		nautilusWrapper selectedMethod
			ifNil: [ self selectedMethod: nil ]
			ifNotNil: [:sel | self selectedMethod: (nautilusWrapper selectedClass methodDict at: sel ifAbsent: [ nil ])].

	self
		selectedGroup: nautilusWrapper selectedGroup;
		showPackages: nautilusWrapper showPackages;
		showGroups: nautilusWrapper showGroups;
		showHierarchy: nautilusWrapper showHierarchy;
		showComment: nautilusWrapper showComment;
		showInstance: nautilusWrapper showInstance;
		showCategories: nautilusWrapper showCategories.
		
	self ui ifNotNil: [:interface || cl |
		cl := nautilusWrapper selectedClass.
		interface showPackages: self showPackages.
		cl
			ifNil: [ interface showInstance: false ] 
			ifNotNil: [ 
				interface showInstance: cl isMeta not.
				cl := cl theNonMetaClass ].
		interface
			selectedPackageWithoutChangingSelectionInternally: nautilusWrapper selectedPackage;
			selectedClassWithoutChangingSelectionInternally: cl;
			selectedCategoryInternally: nautilusWrapper selectedCategory.
		nautilusWrapper selectedMethod
			ifNil: [ interface selectedMethod: nil ]
			ifNotNil: [:sel | interface selectedMethod: (nautilusWrapper selectedClass methodDict at: sel ifAbsent: [ nil ])].
		interface updateBothView.
		interface update].
	"self registerHistoryNewEntry"