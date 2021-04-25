adding
addTopic: arg1
	topics
		detect: [ :arg2 | arg2 name = arg1 name ]
		ifNone: [ topics add: arg1 ]