example
	^ self
		openOn: (MBConfigurationRoot current configurations 
					detect: [ :config | config name = 'ConfigurationOfVersionner' ])