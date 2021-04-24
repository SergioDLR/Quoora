tests
testRespuestaDeUsuario
	| auxPreg auxResp |

	auxPreg := Question withTitle: '¬¨√∏Para que sirve x?' andUser: auxUser1  andRawTopics: '' andText: ''.
	auxSys addQuestion: auxPreg.
	auxResp := Answer withUser: auxUser2  andText: 'Sirve para ...'.
	auxPreg  addAnswer: auxResp.
	self assert: ((auxSys obtainAnswersByUser: auxUser2) size) equals: 1

