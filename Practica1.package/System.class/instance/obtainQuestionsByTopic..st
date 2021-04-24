as yet unclassified
obtainQuestionsByTopic: topic
	^questions select: [ :question | question hasTopic: topic ]