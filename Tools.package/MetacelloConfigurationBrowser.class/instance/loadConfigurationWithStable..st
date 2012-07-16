private
loadConfigurationWithStable: loadStable
	"Load the configuration and (depending on the flag) load the latest stable version"
	| configName |

	configName := selectedConfiguration readStream upTo: $-.
	Gofer new
		url: selectedRepository; 
		package: configName;
		load.
	loadStable ifFalse: [^self].
	
	"Now load the latest stable version"
	(Smalltalk at: (configName) asSymbol) project stableVersion load.