as yet unclassified
withCurrentUser: arg1 andTitle: title andText:text andTopics:topic
	| tmp2 questionTmp|
	questionTmp:=  Question withTitle: title andUser: arg1 andRawTopics: topic andText: text.
	System getInstance addQuestion: questionTmp.
	System getInstance registerMissingTopics: topic.					
	tmp2 := CuooraQuestion new.
	tmp2
		currentUser: arg1;
		question: questionTmp.
	^ tmp2 yourself