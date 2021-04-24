as yet unclassified
loginWithUsername: aUsername andPassword: aPassword
	users detect: [ :u | u name = aUsername and: u password = aPassword ] ifFound: [ :u | ^u ].
	^nil