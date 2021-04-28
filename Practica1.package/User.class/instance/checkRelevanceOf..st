as yet unclassified
checkRelevanceOf: quest
	| tmp1 tmp2 |
	tmp1 := quest topics anySatisfy: [ :arg2 | self topics includes: arg2 ].
	tmp2 := self followList includes: quest user.
	^ tmp1 or: tmp2