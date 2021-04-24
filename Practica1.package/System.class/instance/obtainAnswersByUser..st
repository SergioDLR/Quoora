as yet unclassified
obtainAnswersByUser: user
	^questions flatCollect: [ :q | q answersByUser: user ] as: Bag.