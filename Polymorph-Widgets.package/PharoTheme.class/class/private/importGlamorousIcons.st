importGlamorousIcons
	"utility method to import the icons necessary for the theme from the file system"
	"self importGlamorousIcons"
	| icons |
	icons := #(
		'glamorousMax'
		'glamorousMin'
		'glamorousClose'
		'glamorousMenu'
		'glamorousMaxInactive'
		'glamorousMinInactive'
		'glamorousCloseInactive'
		'glamorousMenuInactive'
		'glamorousMenuPin'
		'glamorousCheckboxSelected'
		'glamorousCheckboxUnselected'
		'glamorousRadioSelected'
		'glamorousRadioUnselected').
	self importIcons: icons fromFolder: 'icons' inClass: PharoUIThemeIcons category: '*glamour-morphic-theme'