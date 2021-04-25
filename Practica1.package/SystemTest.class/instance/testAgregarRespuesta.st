tests
testAgregarRespuesta
	| tmp1 tmp2 |
	tmp1 := Question
		withTitle: '¬¨√∏Para que sirve x?'
		andUser: auxUser1
		andRawTopics: ''
		andText: ''.
	auxSys addQuestion: tmp1.
	self assert: (auxSys obtainAnswersToQuestion: tmp1) size equals: 0.
	tmp2 := Answer withUser: auxUser2 andText: 'Sirve para ...'.
	tmp1 addAnswer: tmp2.
	self assert: (auxSys obtainAnswersToQuestion: tmp1) size equals: 1