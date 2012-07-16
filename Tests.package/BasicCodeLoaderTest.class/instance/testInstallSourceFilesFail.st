tests
testInstallSourceFilesFail
	| codeLoader reference |
	
	codeLoader := BasicCodeLoader new.
	codeLoader loadSourceFiles: {'codeLoad1.st'}.
	"Ensure file is not there"
	(FileSystem disk workingDirectory / 'codeLoad1.st') asFileReference delete. 
	"Trying non existing file"
	self should: [ codeLoader installSourceFiles ] raise: Error.