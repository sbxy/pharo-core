enableAstHighlightSetting: aBuilder 
	<systemsettings>
	(aBuilder setting: #useAstColoring) 
		label: 'Enable AST based coloring' translated;
		parent: #codeBrowsing; 
		target: SHRBTextStyler ;
		description: 'When selected we use AST for coloring text' translated
