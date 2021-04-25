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
				callback: [ | tmp5 |
					System getInstance registerMissingTopics: _questionRawTopics.
					tmp5 := Question
						withTitle: _questionTitle
						andUser: currentUser
						andRawTopics: _questionRawTopics
						andText: _questionText.
					System getInstance addQuestion: tmp5.
					self
						call: (CuooraQuestion withCurrentUser: currentUser andQuestion: tmp5) ];
				value: 'Save' ]