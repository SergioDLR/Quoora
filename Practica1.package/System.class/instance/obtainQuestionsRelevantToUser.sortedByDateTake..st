as yet unclassified
obtainQuestionsRelevantToUser: arg1 sortedByDateTake: arg2
	| tmp1 tmp2 |
	tmp1 := self obtainQuestionsRelevantToUser: arg1.
	tmp2 := arg2 min: tmp1 size.
	^ (tmp1 sorted: [ :arg3 :arg4 | arg3 creation > arg4 creation ])
		first: tmp2