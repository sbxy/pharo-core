switchUsers2: aBuilder 
	"I build a menu"
	"<worldMenu>"
	(aBuilder item: #'Switch User tests').
	
	(aBuilder item: #'Test Halt')
		parent: #'Switch User tests';
		action: [ self halt ].
	(aBuilder item: #'Test DNU')
		parent: #'Switch User tests';
		action: [ self DNU ].
	(aBuilder item: #'Test inspect')
		parent: #'Switch User tests';
		action: [ self inspect ]