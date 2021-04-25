tests
testFollow
	auxUser
		follow: (User withName: 'Pepe2' andPassword: 'pass');
		follow: (User withName: 'Pepe3' andPassword: 'pass').
	self assert: auxUser followList size equals: 2