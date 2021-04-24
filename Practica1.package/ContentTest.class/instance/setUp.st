running
setUp
	super setUp.
	auxUser := User withName: 'user' andPassword: 'pass'.
	auxContent := Content new user: auxUser.