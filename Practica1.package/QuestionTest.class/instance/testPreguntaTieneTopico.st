tests
testPreguntaTieneTopico
	self assert:	(aQuestion hasTopic: (Topic withName: 'foo')) equals: true