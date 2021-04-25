as yet unclassified
loginWithUsername: arg1 andPassword: arg2
	users
		detect: [ :arg3 | arg3 name = arg1 and: arg3 password = arg2 ]
		ifFound: [ :arg4 | ^ arg4 ].
	^ nil