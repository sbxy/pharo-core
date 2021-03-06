testKernelPackage
	| kernelPackage |
	"We make sure that the package Kernel exist"
	self assert: (self packageClass existPackageNamed: 'Kernel').
	
	kernelPackage := self packageClass named: 'Kernel'.
	
	"Testing the name of the kernel"
	self assert: (kernelPackage packageName = 'Kernel').
	self assert: (kernelPackage externalName = 'Kernel').
	
	"The kernel package includes the class Object"
	self assert: (kernelPackage includesClass: Object).
	self assert: (kernelPackage includesClassNamed: #Object).
	
	"All methods defined in Object belongs to the package Kernel"
	"MethodReference should be remove"
	self assert: ((kernelPackage coreMethodsForClass: Object) allSatisfy: [:m | (m isKindOf: RGMethodDefinition)]).
	self assert: ((Object methods collect: [:cm | cm methodReference]) 
						includesAllOf: (kernelPackage coreMethodsForClass: Object)).
						
	"However, all methods defined in the class do not belong to the package because of methods extensions"					
	self deny: ((kernelPackage coreMethodsForClass: Object) 
						includesAllOf: (Object methods collect: [:cm | cm methodReference])).
						
	"Check some methods defined in the package"
	self assert: (kernelPackage includesMethod: #at: ofClass: Object).
	self assert: (kernelPackage includesMethod: #at:put ofClass: Object).
	self assert: (kernelPackage includesMethod: #basicAt: ofClass: Object).

	"Methods that belong to other packages do not belong to kernel"
	"browser and browseHierarchy belong to the Tools package"
	self deny: (kernelPackage includesMethod: #browse ofClass: Object).
	self deny: (kernelPackage includesMethod: #browseHierarchy ofClass: Object).
