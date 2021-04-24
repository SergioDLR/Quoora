as yet unclassified
registerMissingTopics: rawTopics
	| candidates |
	candidates := Question rawTopicsToTopics: rawTopics.
	candidates do: [ :candidate | self addTopic: (Topic withName: candidate) ]