as yet unclassified
obtainQuestionsRelevantToUser: arg1
	^ questions select: [ :arg2 | arg2 isRelevantToUser: arg1 ]