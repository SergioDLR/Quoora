tests
testPreguntasDeUsuario
	| auxPreg auxResp |

	auxPreg := Question withTitle: '¬¨√∏Para que sirve x?' andUser: auxUser1 andTopics: '' andText: ''.
	auxSys addQuestion: auxPreg.
	auxResp := Answer withUser: auxUser2  andText: 'Sirve para ...'.
	auxPreg addAnswer: auxResp.
	self assert: ((auxSys obtainQuestionsByUser: auxUser1) size) equals: 1.
	self assert: ((auxSys obtainQuestionsByUser: auxUser1) includes: auxPreg) equals: true
