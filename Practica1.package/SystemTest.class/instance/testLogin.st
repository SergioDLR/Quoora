tests
testLogin
	self
		assert:
			(auxSys
				loginWithUsername: 'Pedro@cuoora.com'
				andPassword: 'Pedro@cuoora.com')
			equals: auxUser1;
		assert:
			(auxSys
				loginWithUsername: 'Diego@cuoora.com'
				andPassword: 'Diego@cuoora.com')
			equals: auxUser2