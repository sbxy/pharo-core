largeEnough
	^ (self font widthOfString: initialContents) <= (self ownerChain collect: [ :morph | morph extent x ]) min