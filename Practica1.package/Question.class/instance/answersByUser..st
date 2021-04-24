as yet unclassified
answersByUser: anUser
	^self answers select: [ :answer | answer user = anUser ].
