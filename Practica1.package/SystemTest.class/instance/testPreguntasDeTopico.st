tests
testPreguntasDeTopico
	| tmp1 tmp2 tmp3 |
	auxUser1 follow: auxUser2.
	tmp1 := Question
		withTitle: '¬¨√∏Para que sirve x?'
		andUser: auxUser1
		andRawTopics: 'AAA,BBB'
		andText: ''.
	auxSys addQuestion: tmp1.
	tmp2 := Question
		withTitle: '¬¨√∏Qu‚àö¬© significa x? '
		andUser: auxUser2
		andRawTopics: 'BBB,CCC'
		andText: ''.
	auxSys addQuestion: tmp2.
	tmp3 := Question
		withTitle: '¬¨√∏Qu‚àö¬© es un x? '
		andUser: auxUser2
		andRawTopics: 'CCC,DDD'
		andText: ''.
	auxSys addQuestion: tmp3.
	self
		assert: (auxSys obtainQuestionsByTopic: (Topic withName: 'BBB')) size
		equals: 2