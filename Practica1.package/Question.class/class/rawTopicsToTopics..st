private
rawTopicsToTopics: arg1
	^ arg1 = ''
		ifTrue: [ Bag new ]
		ifFalse: [ (arg1 splitOn: ',') asBag ]