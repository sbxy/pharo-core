registerRetrievingMethodEvent

	retrievingMethod whenChangedDo: [ :meth | 
			self model
				ifNotNil: [ :m || value |
					value := m perform: meth.
					self internUpdateWith: value ]]