as yet unclassified
withUser: arg1 andText: arg2
	| tmp2 |
	tmp2 := self new.
	tmp2
		user: arg1;
		text: arg2.
	^ tmp2 yourself