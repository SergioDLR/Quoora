initialization
resetInstanceToExample
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp7 |
	self resetInstance.
	tmp1 := User
		withName: 'pedro@cuoora.com'
		andPassword: 'pedro@cuoora.com'.
	tmp2 := User
		withName: 'diego@cuoora.com'
		andPassword: 'diego@cuoora.com'.
	tmp3 := User
		withName: 'juan@cuoora.com'
		andPassword: 'juan@cuoora.com'.
	tmp4 := Question
		withTitle: '¬¨√∏Para qu‚àö¬© sirve el m‚àö¬©todo SetUp?'
		andUser: tmp1
		andRawTopics: 'OO1,Test de unidad'
		andText: ''.
	tmp4
		addAnswer:
			(Answer
				withUser: tmp2
				andText: 'Sirve para instanciar los objetos que son evaluados por el test en un ‚àö‚à´nico m‚àö¬©todo y que se ejecute siempre antes de cada test.').
	tmp5 := Question
		withTitle: '¬¨√∏Qu‚àö¬© significa #messageNotUnderstood?'
		andUser: tmp2
		andRawTopics: 'OO1,Smalltalk'
		andText: ''.
	tmp5
		addAnswer:
			(Answer
				withUser: tmp1
				andText: 'Significa que el objeto que recibi‚àö‚â• el mensaje no encontr‚àö‚â• ning‚àö‚à´n m‚àö¬©todo para ejecutar en respuesta.').
	tmp7 := instance.
	tmp7
		addUser: tmp1;
		addUser: tmp2;
		addUser: tmp3;
		addQuestion: tmp4;
		addQuestion: tmp5