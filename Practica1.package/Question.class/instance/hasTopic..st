testing
hasTopic: aTopic
	^(self topics) anySatisfy: [ :topicName | topicName = aTopic name]