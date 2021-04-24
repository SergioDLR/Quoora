tests
testRespuestaAPregunta
	| auxPreg auxResp |

	auxPreg := Question withTitle: '¬¨√∏Para que sirve x?' andUser: auxUser1 andRawTopics: '' andText: ''.
	auxSys addQuestion: auxPreg.
	auxResp := Answer withUser: auxUser2  andText: 'Sirve para ...'.
	auxPreg  addAnswer: auxResp.
	self assert: ((auxSys obtainAnswersToQuestion: auxPreg) size) equals: 1.
	self assert: ((auxSys obtainAnswersToQuestion: auxPreg) includes: auxResp) equals: true.

