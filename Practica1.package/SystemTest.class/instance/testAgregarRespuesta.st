tests
testAgregarRespuesta
	| auxPreg auxResp |

	auxPreg := Question withTitle: '¬¨√∏Para que sirve x?' andUser: auxUser1 andRawTopics: '' andText: ''.
	auxSys addQuestion: auxPreg.
	self assert: ((auxSys obtainAnswersToQuestion: auxPreg) size) equals: 0.
	auxResp := Answer withUser: auxUser2 andText: 'Sirve para ...'.
	auxPreg addAnswer: auxResp.
	self assert: ((auxSys obtainAnswersToQuestion: auxPreg) size) equals: 1.

