removeAllItems
	
	selectedModel roots do: [ :item |  
		selectRule removeAllFoundIn: item leaves].
	self updateTree 	  