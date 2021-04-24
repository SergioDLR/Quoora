tests
testPreguntasDeInteresPorTopico
	| auxPreg1 auxPreg2 auxPreg3 |

	auxUser1 addInterestInTopic: 'BBB'. 
	auxPreg1 := Question withTitle: '¬¨√∏Para que sirve x?' andUser: auxUser1 andRawTopics: 'AAA,BBB' andText: ''.
	auxSys addQuestion: auxPreg1.
	auxPreg2 := Question withTitle: '¬¨√∏Qu‚àö¬© significa x? ' andUser: auxUser2 andRawTopics: 'BBB,CCC' andText: ''.
	auxSys addQuestion: auxPreg2.
	auxPreg3 := Question withTitle: '¬¨√∏Qu‚àö¬© es un x? ' andUser: auxUser2 andRawTopics: 'CCC,DDD' andText: ''.
	auxSys addQuestion: auxPreg3.
	self assert: ((auxSys obtainQuestionsRelevantToUser: auxUser1) size) equals: 2.