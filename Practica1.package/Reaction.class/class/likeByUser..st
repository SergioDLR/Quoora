instance creation
likeByUser: arg1
	| tmp2 |
	tmp2 := Reaction new.
	tmp2
		user: arg1;
		emotion: #like.
	^ tmp2 yourself