startUp: resuming
	resuming 
		ifTrue:[
			self current 
				clearBitBltSubPixelAvailable;
				clearForceNonSubPixelCount.
			self updateFontsAtImageStartup ifTrue: [FreeTypeFontProvider current updateFromSystem]]