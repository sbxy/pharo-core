menu
startupLoaderMenuOn: aBuilder 
	<worldMenu>
	
	(aBuilder item: #startupLoader)
		action: [ self default loadStartupScript ];
		label: 'Run startup scripts';
		parent: #System;
		order: 2;
		help: 'Run startup "scripts';
		icon: UITheme current smallJustifiedIcon