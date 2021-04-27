rendering
renderContentOn: arg1
	self renderHeaderOn: arg1.
	arg1
		horizontalRule;
		form: [ | tmp2 tmp4 |
			arg1 text: 'Title: '.
			arg1 textInput on: #questionTitle of: self.
			arg1
				break;
				text: 'Content: '.
			arg1 textInput on: #questionText of: self.
			arg1
				break;
				text: 'Topics: '.
			arg1 textInput on: #questionRawTopics of: self.
			arg1 break.
			tmp2 := arg1 submitButton.
			tmp2
				callback: [ self call: (CuooraHome withUser: currentUser) ];
				value: 'Cancel'.
			tmp4 := arg1 submitButton.
			tmp4
				callback: [ 
					self
						call: (CuooraQuestion withCurrentUser: currentUser andTitle: _questionTitle andText:_questionText andTopics:_questionRawTopics) ];
				value: 'Save' ]