namedFunctionFrom: anArrayWithDefinition

	"Create an instance of receiver by parsing an array in a form like C function definition: 

	#( void foo (int * x, float y ) ) 
	"

	^ NBFnSpecParser new parseNamedFunction: anArrayWithDefinition 