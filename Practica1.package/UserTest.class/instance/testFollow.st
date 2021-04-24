tests
testFollow
	auxUser follow: (User withName: 'Pepe2' andPassword: 'pass').
	auxUser follow: (User withName: 'Pepe3' andPassword: 'pass').
	self assert: (auxUser followList size) equals: 3 "because user follows itself by default"
	