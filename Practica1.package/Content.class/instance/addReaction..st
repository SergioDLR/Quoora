accessing
addReaction: aReaction
	reactions detect: [ :r | r user = aReaction user ]
		ifFound: [ :r |
			(r emotion = aReaction emotion) ifFalse: [
				reactions remove: r.
				reactions add: aReaction
			]
		] 
		ifNone: [
			reactions add: aReaction
		] 