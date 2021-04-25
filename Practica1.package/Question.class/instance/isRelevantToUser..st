testing
isRelevantToUser: arg1
	| tmp1 tmp2 |
	tmp1 := topics anySatisfy: [ :arg2 | arg1 topics includes: arg2 ].
	tmp2 := arg1 followList includes: self user.
	^ tmp1 or: tmp2