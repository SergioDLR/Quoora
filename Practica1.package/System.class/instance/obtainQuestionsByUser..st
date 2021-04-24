as yet unclassified
obtainQuestionsByUser: user
	^questions select: [ :q | q user = user ]