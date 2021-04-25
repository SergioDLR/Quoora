testing
hasTopic: arg1
	^ self topics anySatisfy: [ :arg2 | arg2 = arg1 name ]