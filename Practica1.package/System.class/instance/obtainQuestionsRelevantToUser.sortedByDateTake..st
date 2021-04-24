as yet unclassified
obtainQuestionsRelevantToUser: anUser sortedByDateTake: aNumber
	| relevantQuestions howMany |
	relevantQuestions := self obtainQuestionsRelevantToUser: anUser.
	howMany := aNumber min: (relevantQuestions size).
	^((relevantQuestions sorted: [:x :y | x creation > y creation]) first: howMany)
