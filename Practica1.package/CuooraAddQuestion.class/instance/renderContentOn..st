rendering
renderContentOn: arg1
arg1 div class:'container'; with:[
self renderHeaderOn: arg1.
	arg1
		horizontalRule.
		arg1 div class:'row';with:[
		arg1 div class:'col-8'; with:[
			arg1 div class:'card'; with:[
				arg1 div class:'card-body';with:[
					arg1 paragraph: 'add question'.
	arg1	form: [ | tmp2 tmp4 |
			arg1  textInput class:'form-control mb-2'; placeholder:'Title';on: #questionTitle of: self.
			arg1 textArea class:'form-control mb-2' ; placeholder:'Content'; on: #questionText of: self.
			arg1 textInput class:'form-control mb-2'; placeholder:'Topics';on: #questionRawTopics of: self.
			arg1 break.
			tmp2 := arg1 submitButton.
			tmp2
				callback: [ self call: (CuooraHome withUser: currentUser) ];
				class:'   btn btn-danger';
				value: 'Cancel'.
			tmp4 := arg1 submitButton.
			tmp4
			class:'  ml-2 btn btn-primary';
				callback: [ 
					self
						call: (CuooraQuestion withCurrentUser: currentUser andTitle: _questionTitle andText:_questionText andTopics:_questionRawTopics) ];
				value: 'Save' ]
			].
		]
	]
]
 ].