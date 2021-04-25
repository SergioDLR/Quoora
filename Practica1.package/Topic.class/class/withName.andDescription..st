as yet unclassified
withName: arg1 andDescription: arg2
	| tmp2 |
	tmp2 := self new.
	tmp2
		name: arg1;
		description: arg2.
	^ tmp2 yourself