newDefaultSettings
	BalloonMorph setBalloonColorTo: self lightSelectionColor.
	^super newDefaultSettings
		menuColor: self baseColor;
		menuTitleColor: self baseColor;
		windowColor: self baseColor;
		selectionColor: self lightSelectionColor;
		menuSelectionColor: self baseSelectionColor;
		progressBarColor: self baseColor;
		standardColorsOnly: true;
		autoSelectionColor: false;
		preferRoundCorner: false;
		flatMenu: true