accessing
testPuntuacion
	reaction:= Reaction likeByUser:  user.
	publicacion addReaction:reaction.
   self assert: (publicacion puntuacion) equals:1.