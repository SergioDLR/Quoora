running
setUp
	anUser := User withName: 'pepe' andPassword: 'qwerty'.
	aQuestion := Question
		withTitle: 'Que es StikoMagica?'
		andUser: anUser
		andRawTopics: 'foo,bar'
		andText: 'Me interesaria saber esto.'