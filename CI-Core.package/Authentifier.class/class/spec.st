specs
spec
<spec>

	^ SpecLayout composed
		add: #userLabel origin: 0@0 corner: 0@0 offsetOrigin: 0@0 offsetCorner: 200@25;
		add: #userField origin: 0@0 corner: 0@0 offsetOrigin: 0@25 offsetCorner: 300@50;
		add: #gmail origin: 0@0 corner: 0@0 offsetOrigin: 300@25 offsetCorner: 400@50;
		add: #passwordLabel origin: 0@0 corner: 0@0 offsetOrigin: 0@50 offsetCorner: 200@75;
		add: #passwordField origin: 0@0 corner: 0@0 offsetOrigin: 0@75 offsetCorner: 300@100;
		yourself