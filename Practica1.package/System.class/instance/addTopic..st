adding
addTopic: aTopic
	topics detect: [ :x | x name = aTopic name ] ifNone: [ topics add: aTopic ]