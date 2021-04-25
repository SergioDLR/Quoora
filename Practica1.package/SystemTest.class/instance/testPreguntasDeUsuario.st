tests
testPreguntasDeUsuario
	| tmp1 tmp2 |
	tmp1 := Question
		withTitle: '¬¨√∏Para que sirve x?'
		andUser: auxUser1
		andTopics: ''
		andText: ''.
	auxSys addQuestion: tmp1.
	tmp2 := Answer withUser: auxUser2 andText: 'Sirve para ...'.
	tmp1 addAnswer: tmp2.
	self
		assert: (auxSys obtainQuestionsByUser: auxUser1) size equals: 1;
		assert: ((auxSys obtainQuestionsByUser: auxUser1) includes: tmp1)
			equals: true