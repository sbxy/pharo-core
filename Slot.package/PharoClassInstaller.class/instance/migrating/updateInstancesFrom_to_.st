updateInstancesFrom: old to: new
	| oldInstances variable instSize newInstances map |
	
	oldInstances := old allInstances asArray.
	variable := new isVariable.
	instSize := new instSize.
	newInstances := Array new: oldInstances size.
	map := new instVarMappingFrom: old.
	
	1 to: oldInstances size do: [ :i |
		newInstances at: i put: (
			new newInstanceFrom: (oldInstances at: i) 
				 variable: variable 
				 size: instSize 
				 map: map) ].
	
	oldInstances elementsForwardIdentityTo: newInstances.