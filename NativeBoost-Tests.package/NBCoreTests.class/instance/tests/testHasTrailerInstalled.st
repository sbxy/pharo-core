testHasTrailerInstalled

	
	"Make sure compiled methods trailer installed"
	
	self assert: (CompiledMethodTrailer trailerKinds includes: #NativeCodeTrailer )