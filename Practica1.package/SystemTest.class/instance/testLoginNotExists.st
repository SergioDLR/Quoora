tests
testLoginNotExists
	self assert: (auxSys loginWithUsername: 'qwerty'  andPassword: 'qwerty') equals: nil.

