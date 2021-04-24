tests
testPregunta
	| auxPreg |

	auxPreg := Question withTitle: '¬¨√∏Para que sirve el metodo SetUp?' andUser: auxUser1 andRawTopics: '' andText: ''.
	auxSys addQuestion: auxPreg.
	
	self assert: ((auxSys obtainQuestionsByUser: auxUser1) size) equals: 1

