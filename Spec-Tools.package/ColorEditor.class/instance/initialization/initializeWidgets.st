initializeWidgets 

	self instantiateModels: #(
		r 	SliderModel
		g 	SliderModel
		b 	SliderModel
		a 	SliderModel ).
					
	r 
		min: 0;
		max: 255;
		label: 'red';
		quantum: 1;
		value: 0;
		whenValueChangedDo: [ self updateColor ].

	g 
		min: 0;
		max: 255;
		label: 'green';
		quantum: 1;
		value: 0;
		whenValueChangedDo: [ self updateColor ].

	b 
		min: 0;
		max: 255;
		label: 'blue';
		quantum: 1;
		value: 0;
		whenValueChangedDo: [ self updateColor ].

	a 
		min: 0;
		max: 255;
		label: 'alpha';
		quantum: 1;
		value: 255;
		whenValueChangedDo: [ self updateColor ].

	