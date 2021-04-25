adding
addUser: arg1
	users
		detect: [ :arg2 | arg2 name = arg1 name ]
		ifNone: [ users add: arg1 ]