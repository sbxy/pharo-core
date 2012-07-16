generating
generatingSpec
	
	^ ((Array new: 57) at: 1 put: #model; at: 2 put: #subclass:category:; at: 3 put: #ClassNameSetter; at: 4 put: 'Spec-Builder-Tools'; at: 5 put: #addInstVarNamed:type:; at: 6 put: 'classNameLabel'; at: 7 put: LabelModel; at: 8 put: #addInstVarNamed:type:; at: 9 put: 'classNameTextField'; at: 10 put: TextInputFieldModel; at: 11 put: #addInstVarNamed:type:; at: 12 put: 'categoryLabel'; at: 13 put: LabelModel; at: 14 put: #addInstVarNamed:type:; at: 15 put: 'categoryField'; at: 16 put: TextInputFieldModel; at: 17 put: #addInstVarNamed:type:; at: 18 put: 'toolbar'; at: 19 put: OkCancelToolbar; at: 20 put: #compileWithoutReturn:classified:; at: 21 put: 'initialize
	
	super initialize'; at: 22 put: 'initialize'; at: 23 put: #compileWithoutReturn:classified:; at: 24 put: 'classNameLabel
	
	^ classNameLabel'; at: 25 put: 'accessing'; at: 26 put: #compileWithoutReturn:classified:; at: 27 put: 'classNameTextField
	
	^ classNameTextField'; at: 28 put: 'accessing'; at: 29 put: #compileWithoutReturn:classified:; at: 30 put: 'categoryLabel
	
	^ categoryLabel'; at: 31 put: 'accessing'; at: 32 put: #compileWithoutReturn:classified:; at: 33 put: 'categoryField
	
	^ categoryField'; at: 34 put: 'accessing'; at: 35 put: #compileWithoutReturn:classified:; at: 36 put: 'toolbar
	
	^ toolbar'; at: 37 put: 'accessing'; at: 38 put: #addSourceCode:into:; at: 39 put: 'toolbar := self instantiate: OkCancelToolbar'; at: 40 put: #initialize; at: 41 put: #addSourceCode:into:; at: 42 put: 'categoryField := self instantiate: TextInputFieldModel'; at: 43 put: #initialize; at: 44 put: #addSourceCode:into:; at: 45 put: 'categoryLabel := self instantiate: LabelModel'; at: 46 put: #initialize; at: 47 put: #addSourceCode:into:; at: 48 put: 'classNameTextField := self instantiate: TextInputFieldModel'; at: 49 put: #initialize; at: 50 put: #addSourceCode:into:; at: 51 put: 'classNameLabel := self instantiate: LabelModel'; at: 52 put: #initialize; at: 53 put: #theMetaClass; at: 54 put: #compileWithoutReturn:classified:; at: 55 put: 'internSpec
	<spec>
	^ {#Panel. #changeProportionalLayout. #''add::''. {#(#model ''classNameLabel'' ''internSpec''). #layout:. {#LayoutFrame. #fractions:offsets:. (0@0) corner: (1@0). (0@0) corner: (0@25)}}. #''add::''. {#(#model ''classNameTextField'' ''internSpec''). #layout:. {#LayoutFrame. #fractions:offsets:. (0@0) corner: (1@0). (0@30) corner: (0@45)}}. #''add::''. {#(#model ''categoryLabel'' ''internSpec''). #layout:. {#LayoutFrame. #fractions:offsets:. (0@0) corner: (1@0). (0@50) corner: (0@75)}}. #''add::''. {#(#model ''categoryField'' ''internSpec''). #layout:. {#LayoutFrame. #fractions:offsets:. (0@0) corner: (1@0). (0@80) corner: (0@105)}}. #add:. {#(#model #toolbar #internSpec). #layout:. {#LayoutFrame. #fractions:offsets:. (0@1) corner: (1@1). (0@ -25) corner: (0@0)}}. #vResizing:. #spaceFill. #hResizing:. #spaceFill}'; at: 56 put: 'specs'; at: 57 put: #theNonMetaClass; yourself)