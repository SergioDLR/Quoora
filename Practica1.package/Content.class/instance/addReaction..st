accessing
addReaction: arg1
	reactions
		detect: [ :arg2 | arg2 user = arg1 user ]
		ifFound: [ :arg3 | 
			arg3 emotion = arg1 emotion
				ifFalse: [ reactions
						remove: arg3;
						add: arg1 ] ]
		ifNone: [ reactions add: arg1 ]