browseCompressedCodeStream: aStandardFileStream 
	"Browse the selected file in fileIn format."
	| unzipped |
	[ | zipped |zipped := GZipReadStream on: aStandardFileStream.
	unzipped := MultiByteBinaryOrTextStream with: zipped contents asString]
		ensure: [aStandardFileStream close].
	unzipped reset.
	self browseStream: unzipped named: aStandardFileStream name