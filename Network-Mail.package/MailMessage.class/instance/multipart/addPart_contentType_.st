addPart: bodyString contentType: aContentTypeString

	| newPart |
	newPart := MailMessage empty.
	newPart setField: 'content-type' toString: aContentTypeString.
	newPart body: (MIMEDocument contentType: aContentTypeString  content: bodyString).
	self addPart: newPart.
