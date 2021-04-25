tests
testPregunta
	| tmp1 |
	tmp1 := Question
		withTitle: '¬¨√∏Para que sirve el metodo SetUp?'
		andUser: auxUser1
		andRawTopics: ''
		andText: ''.
	auxSys addQuestion: tmp1.
	self assert: (auxSys obtainQuestionsByUser: auxUser1) size equals: 1