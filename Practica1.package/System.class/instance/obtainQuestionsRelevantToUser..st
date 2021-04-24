as yet unclassified
obtainQuestionsRelevantToUser: user
	^(questions select: [ :q | q isRelevantToUser: user]) 