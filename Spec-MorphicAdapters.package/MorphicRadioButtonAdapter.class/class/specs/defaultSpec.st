defaultSpec
	<spec>
	^ {#CheckboxMorph.
	    		#on:selected:changeSelected:. 	#model. #state. #state:.
			#label:.								{	#model. #label		}.
			#labelClickable:.					{	#model. #labelClickable}.
			#beRadioButton.
			#hResizing:. 						#shrinkWrap.
			#vResizing:. 						#shrinkWrap.
			#setBalloonText:.					#(model help).
			#dragEnabled:.						#(model dragEnabled).
			#dropEnabled:.						#(model dropEnabled).	
			#dragEnabled:.						#(model dragEnabled).
			#dropEnabled:.						#(model dropEnabled).					
			#borderWidth:.						#(model borderWidth).
			#borderColor:.						#(model borderColor)}