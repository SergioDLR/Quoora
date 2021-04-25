as yet unclassified
withCurrentUser: arg1
	| tmp2 |
	tmp2 := CuooraAddQuestion new.
	tmp2 currentUser: arg1.
	^ tmp2 yourself