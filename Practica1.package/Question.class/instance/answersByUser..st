accessing
answersByUser: arg1
	^ self answers select: [ :arg2 | arg2 user = arg1 ]