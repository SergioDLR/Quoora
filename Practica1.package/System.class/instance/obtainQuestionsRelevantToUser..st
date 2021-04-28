as yet unclassified
obtainQuestionsRelevantToUser: usuario
	^ questions select: [ :arg2 | arg2 isRelevantToUser: usuario ]