as yet unclassified
obtainQuestionsByTopic: arg1
	^ questions select: [ :arg2 | arg2 hasTopic: arg1 ]