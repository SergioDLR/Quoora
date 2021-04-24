running
setUp
	auxSys := System new.	
	auxUser1  := User withName: 'Pedro@cuoora.com' andPassword: 'Pedro@cuoora.com'.
	auxSys addUser: auxUser1.
	auxUser2 := User withName: 'Diego@cuoora.com' andPassword: 'Diego@cuoora.com'.
	auxSys addUser: auxUser2.
