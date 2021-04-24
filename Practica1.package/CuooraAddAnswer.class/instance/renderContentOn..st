rendering
renderContentOn: html
	self renderHeaderOn: html.
	html horizontalRule.
	RenderingHelper renderQuestion: question viewByUser: currentUser inComponent: self usingBrush: html. 
	html horizontalRule.
	html form: [ 
		html text: 'Answer: '.
		html textInput on: #answerText of: self.
		html break.
		html submitButton
			callback: [ self call: (CuooraQuestion withCurrentUser: currentUser andQuestion: question) ];
			value: 'Cancel'.
		html submitButton
			callback: [
				question addAnswer: (Answer withUser: currentUser andText: answerText). 
				self call: (CuooraQuestion withCurrentUser: currentUser andQuestion: question)
			];
			value: 'Save'.
	]