as yet unclassified
withCurrentUser: arg1 andProfileUser: arg2
	| tmp2 |
	tmp2 := CuooraUserProfile new.
	tmp2
		currentUser: arg1;
		profileUser: arg2.
	^ tmp2 yourself