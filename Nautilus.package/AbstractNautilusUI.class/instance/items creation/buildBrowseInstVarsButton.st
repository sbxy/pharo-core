buildBrowseInstVarsButton

	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: #browseInstVars;
					stateSelector: #isAClassSelected ;
					onImage: (Smalltalk ui icons iconNamed: #instVarsSelectedIcon);
					offImage: (Smalltalk ui icons iconNamed: #instVarsUnselectedIcon);
					pressedImage: (Smalltalk ui icons iconNamed: #instVarsPressedIcon);	
					extent: 24@24;
					helpText: 'Show instance variables';
					yourself.