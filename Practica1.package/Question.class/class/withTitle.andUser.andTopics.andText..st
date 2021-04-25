as yet unclassified
withTitle: arg1 andUser: arg2 andTopics: arg3 andText: arg4
	| tmp2 |
	tmp2 := self new.
	tmp2
		title: arg1;
		user: arg2;
		topics: arg3;
		text: arg4.
	^ tmp2 yourself