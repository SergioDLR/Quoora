initialization
resetInstanceToExample
	| userPedro userDiego userJuan questionPedro questionDiego |
	
	self resetInstance.
	
	userPedro := User withName: 'pedro@cuoora.com' andPassword: 'pedro@cuoora.com'.
	userDiego := User withName: 'diego@cuoora.com' andPassword: 'diego@cuoora.com'.
	userJuan := User withName: 'juan@cuoora.com' andPassword: 'juan@cuoora.com'.
	
	questionPedro := Question withTitle: '¬¨√∏Para qu‚àö¬© sirve el m‚àö¬©todo SetUp?' andUser: userPedro andRawTopics: 'OO1,Test de unidad' andText: ''.
	questionPedro addAnswer: (
		Answer withUser: userDiego
			andText: 'Sirve para instanciar los objetos que son evaluados por el test en un ‚àö‚à´nico m‚àö¬©todo y que se ejecute siempre antes de cada test.').
	
	questionDiego := Question withTitle: '¬¨√∏Qu‚àö¬© significa #messageNotUnderstood?' andUser: userDiego andRawTopics: 'OO1,Smalltalk' andText: ''.
	questionDiego addAnswer: (
		Answer withUser: userPedro
			andText: 'Significa que el objeto que recibi‚àö‚â• el mensaje no encontr‚àö‚â• ning‚àö‚à´n m‚àö¬©todo para ejecutar en respuesta.').
	
	instance addUser: userPedro; addUser: userDiego; addUser: userJuan; addQuestion: questionPedro; addQuestion: questionDiego.