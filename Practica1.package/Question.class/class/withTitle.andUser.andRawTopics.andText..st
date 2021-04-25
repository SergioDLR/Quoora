as yet unclassified
withTitle: arg1 andUser: arg2 andRawTopics: arg3 andText: arg4
	| tmp2 |
	tmp2 := self new.
	tmp2
		title: arg1;
		user: arg2;
		topics: (self rawTopicsToTopics: arg3);
		text: arg4.
	^ tmp2 yourself