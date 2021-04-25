as yet unclassified
registerMissingTopics: arg1
	| tmp1 |
	tmp1 := Question rawTopicsToTopics: arg1.
	tmp1 do: [ :arg2 | self addTopic: (Topic withName: arg2) ]