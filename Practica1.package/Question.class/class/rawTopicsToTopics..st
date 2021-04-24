private
rawTopicsToTopics: rawTopics
  ^(rawTopics = '') ifTrue: [ Bag new ] ifFalse: [ (rawTopics splitOn: ',') asBag ]