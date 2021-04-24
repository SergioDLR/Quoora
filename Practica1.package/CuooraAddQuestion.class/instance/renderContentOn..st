rendering
renderContentOn: html
	self renderHeaderOn: html.
	html horizontalRule.
	html form: [
		html text: 'Title: '.
		html textInput on: #questionTitle of: self.
		html break.
		html text: 'Content: '.
		html textInput on: #questionText of: self.
		html break.
		html text: 'Topics: '.
		html textInput on: #questionRawTopics of: self.
		html break.
		html submitButton
			callback: [ self call: (CuooraHome withUser: currentUser) ];
			value: 'Cancel'.
		html submitButton
			callback: [
				| question |
				System getInstance registerMissingTopics: _questionRawTopics.
				question := Question
					withTitle: _questionTitle
					andUser: currentUser
					andRawTopics: _questionRawTopics
					andText: _questionText.
				System getInstance addQuestion: question.
				self call: (CuooraQuestion withCurrentUser: currentUser andQuestion: question)
			];
			value: 'Save'.
	]
	