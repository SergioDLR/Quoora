tests
testDislikeReplacedByLike
	self assert: (auxContent countLikes) equals: 0.
	self assert: (auxContent countDislikes) equals: 0.
	self assert: (auxContent reactions size) equals: 0.
	auxContent addReaction: (Reaction dislikeByUser: auxUser).
	self assert: (auxContent countLikes) equals: 0.
	self assert: (auxContent countDislikes) equals: 1.
	self assert: (auxContent reactions size) equals: 1.
	auxContent addReaction: (Reaction likeByUser: auxUser).
	self assert: (auxContent countLikes) equals: 1.
	self assert: (auxContent countDislikes) equals: 0.
	self assert: (auxContent reactions size) equals: 1.