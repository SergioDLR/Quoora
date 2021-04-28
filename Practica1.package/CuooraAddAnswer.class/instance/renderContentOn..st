rendering
renderContentOn: arg1
	self renderHeaderOn: arg1.
	arg1 horizontalRule.
	RenderingHelper
		renderQuestion: question
		viewByUser: currentUser
		inComponent: self
		usingBrush: arg1.
	arg1
		horizontalRule;
		form: [ | tmp2 tmp4 |
			arg1 text: 'Answer: '.
			arg1 textInput on: #answerText of: self.
			arg1 break.
			tmp2 := arg1 submitButton.
			tmp2
				callback: [ self
						call: (CuooraQuestion withCurrentUser: currentUser andQuestion: question) ];
				value: 'Cancel'.
			tmp4 := arg1 submitButton.
			tmp4
				callback: [ 1
						addAnswer: (Answer withUser: currentUser andText: answerText).
					self
						call: (CuooraQuestion withCurrentUser: currentUser andQuestion: question) ];
				value: 'Save' ]