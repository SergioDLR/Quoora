tests
testBorrarQuestion
	|question|
	question := Question
		withTitle: '¬¨√∏Para que sirve x?'
		andUser: auxUser
		andRawTopics: ''
		andText: ''.
	auxUser addQuestion:  question.
	auxUser borrarQuestion: question.
	self assert: auxUser questions size equals:0.