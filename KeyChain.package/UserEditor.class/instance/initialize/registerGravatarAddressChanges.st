registerGravatarAddressChanges
	gravatarAddress whenTextChanged: [ :text | testGravatar state: (self isValidAddressMail: text) ]