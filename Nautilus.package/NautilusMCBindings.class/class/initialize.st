initialization
initialize
	"Initialization code for NautilusMCBindings class"

	super initialize.
	
	RPackageOrganizer default packages do: [:p | self default mcPackageFor: p ]