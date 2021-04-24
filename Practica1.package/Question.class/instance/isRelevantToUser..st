testing
isRelevantToUser: user
	| hasTopic hasFollow |
	hasTopic := topics anySatisfy: [ :t | user topics includes: t ].
	hasFollow := user followList includes: (self user).
	^(hasTopic or: hasFollow)