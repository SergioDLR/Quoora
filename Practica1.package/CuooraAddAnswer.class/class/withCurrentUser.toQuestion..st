as yet unclassified
withCurrentUser: arg1 toQuestion: arg2
	| tmp2 |
	tmp2 := CuooraAddAnswer new.
	tmp2
		currentUser: arg1;
		question: arg2.
	^ tmp2 yourself