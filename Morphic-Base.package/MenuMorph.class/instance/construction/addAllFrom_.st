addAllFrom: aMenuMorph
	"This is a fast add..."
	submorphs := submorphs, (aMenuMorph submorphs collect: [ :each |
		each copy 
			privateOwner: self;
			yourself ]).
	menuItems := submorphs copy asOrderedCollection