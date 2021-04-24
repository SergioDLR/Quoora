adding
addUser: aUser
	users detect: [ :u | u name = aUser name ]
		ifNone: [
			users add: aUser. 
		]
