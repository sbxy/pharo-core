testStartUpList
	"This test documents issue http://code.google.com/p/pharo/issues/detail?id=838"
	
	self should: [ ((SmalltalkImage classPool at: 'StartUpList') indexOf: #OSPlatform) < ((SmalltalkImage classPool at: 'StartUpList') indexOf: #InputEventSensor) ]