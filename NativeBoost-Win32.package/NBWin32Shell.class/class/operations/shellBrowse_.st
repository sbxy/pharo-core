shellBrowse: url
	"
	self shellBrowse: 'http://www.pharo-project.org'
	"
	^self shellExecute: 'open' file: url parameters: '' directory: '' show: SW_SHOW