internSpec
	<spec>
	
	^{#ContainerModel .
			#add: . {{#model . #groupLabel } . #layout: .  #(FrameLayout
																rightFraction: 0
																bottomFraction: 0
																rightOffset: 75
																bottomOffset: 25) }.
			#add: .  {{#model . #groupTextField } .#layout: . #(FrameLayout
																bottomFraction: 0
																leftOffset: 75
																bottomOffset: 25) }.	
			#add: . {{#model . #usernameLabel } . #layout: . #(FrameLayout
																rightFraction: 0
																bottomFraction: 0
																topOffset: 25
																rightOffset: 75
																bottomOffset: 50) }. 
			#add: . {{#model . #usernameTextField } . #layout: . #(FrameLayout
																bottomFraction: 0
																leftOffset: 75
																topOffset: 25
																bottomOffset: 50) }.
			#add: . {{#model.  #setPassword } . #layout: . #(FrameLayout
																bottomFraction: 0
																topOffset: 50
																bottomOffset: 75) }}