tests
testCrearTopico
	auxSys addTopic: (Topic withName: 'OO1' andDescription: 'Objetos 1' ).
	auxSys addTopic: (Topic withName: 'OO1' andDescription: 'Objetos 1' ).
	auxSys addTopic: (Topic withName: 'TDD' andDescription: 'Test Driven Development' ).
	
	self assert: ((auxSys topics) size) equals: 2