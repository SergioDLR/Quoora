instance creation
dislikeByUser: arg1
	| tmp2 |
	tmp2 := Reaction new.
	tmp2
		user: arg1;
		emotion: #dislike.
	^ tmp2 yourself