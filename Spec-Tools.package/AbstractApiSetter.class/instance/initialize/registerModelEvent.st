registerModelEvent

	model whenChangedDo: [ :m | 
			self retrievingMethod
				ifNotNil: [ :meth || value |
					value := m perform: meth.
					self internUpdateWith: value ]]