as yet unclassified
withCurrentUser: arg1 andQuestion: arg2
	| tmp2 |
	tmp2 := CuooraQuestion new.
	tmp2
		currentUser: arg1;
		question: arg2.
	^ tmp2 yourself