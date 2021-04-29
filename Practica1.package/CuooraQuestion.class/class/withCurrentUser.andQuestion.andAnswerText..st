as yet unclassified
withCurrentUser: arg1 andQuestion: arg2 andAnswerText:answerText
	| tmp2 |
	arg2 addAnswer: (Answer withUser: arg1 andText: answerText).
	tmp2 := CuooraQuestion new.
	tmp2
		currentUser: arg1;
		question: arg2.
	^ tmp2 yourself