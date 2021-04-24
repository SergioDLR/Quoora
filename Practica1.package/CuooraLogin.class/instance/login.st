private protocol
login
	(System getInstance loginWithUsername: username andPassword: password)
		ifNotNil: [ :u | self call: (CuooraHome withUser: u). ]