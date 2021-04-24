tests
testBorrarPregunta
	| auxPreg auxResp |

	auxPreg := Question withTitle: '¬¨√∏Para que sirve x?' andUser: auxUser1 andRawTopics: '' andText: ''.
	auxSys addQuestion: auxPreg.
	auxResp := Answer withUser: auxUser2  andText: 'Sirve para ...'.
	auxPreg addAnswer: auxResp.
	auxSys deleteQuestion: auxPreg.
	self assert: ((auxSys obtainQuestionsByUser: auxUser1) size) equals: 0