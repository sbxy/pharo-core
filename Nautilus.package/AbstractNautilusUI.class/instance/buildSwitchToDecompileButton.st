items creation
buildSwitchToDecompileButton

	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: # switchToDecompileButton;
					stateSelector: #showDecompile ;
					onImage: (self iconClass iconNamed: #decompileSelectedIcon);
					offImage: (self iconClass iconNamed: #decompileUnselectedIcon);
					pressedImage: (self iconClass iconNamed: #decompilePressedIcon);	
					extent: 24@24;
					helpText: 'Show decompiled method';
					yourself.