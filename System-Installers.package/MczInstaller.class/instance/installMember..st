installation
installMember: member
	 
	self useNewChangeSetDuring:
		[ | str |str := member contentStream text.
		str setConverterForCode.
		CodeImporter evaluateReadStream: str readStream.
		]