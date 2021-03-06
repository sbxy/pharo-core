taskListSettingOn: aBuilder
	<systemsettings> 
	(aBuilder setting: #keepTaskListOpen)
		label: 'Keep task list open' translated;
		description: 'Whether the tasklist is closed (and the selected window activated) when the command key is released' translated;
		parent: #morphic;
		selector: #keepOpen;
		target: TaskListMorph.