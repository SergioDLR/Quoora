as yet unclassified
withTitle: aTitle andUser: aUser andRawTopics: rawTopics andText: text
	^self new title: aTitle; user: aUser; topics: (self rawTopicsToTopics: rawTopics); text: text; yourself