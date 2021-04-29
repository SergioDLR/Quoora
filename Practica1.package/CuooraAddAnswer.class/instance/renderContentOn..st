rendering
renderContentOn: arg1
arg1 div class:'container'; with:[
	self renderHeaderOn: arg1.
	arg1 horizontalRule.
	RenderingHelper
		renderQuestion: question
		viewByUser: currentUser
		inComponent: self
		usingBrush: arg1.
		arg1 div class:'row'; with:[
		arg1 div class:'col-8'; with:[
	arg1
		horizontalRule;
		form: [ | tmp2 tmp4 |
			arg1 textArea class:'form-control'; placeholder:'Answer'; on: #answerText of: self.
			arg1 break.
			tmp2 := arg1 submitButton.
			tmp2
			   class:'btn btn-danger';
				callback: [ self
						call: (CuooraQuestion withCurrentUser: currentUser andQuestion: question) ];
				value: 'Cancel'.
			tmp4 := arg1 submitButton.
			tmp4
				class:'btn btn-primary';
				callback: [
					self
						call: (CuooraQuestion withCurrentUser: currentUser andQuestion: question andAnswerText:answerText) ];
				value: 'Save' ]
			].
		].
	].