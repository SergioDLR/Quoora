private protocol
login
	| tmp1 |
	(tmp1 := System getInstance
		loginWithUsername: username
		andPassword: password)
		ifNotNil: [ self call: (CuooraHome withUser: tmp1) ]