initialize
	super initialize.

	groups := IdentityDictionary new.
	encryptor := SHA1Ecryptor new.
	encryptorDecryptor := DummyEcryptorDecryptor new.
	
	self lock. 