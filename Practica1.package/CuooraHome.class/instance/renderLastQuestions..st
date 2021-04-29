rendering
renderLastQuestions: arg1
	| tmp2 |
	tmp2 := arg1 div.
	tmp2
		id: 'content';
		with: [ | tmp4 |
			tmp4 := arg1 anchor.
			tmp4
				class:'btn btn-primary';
				callback: [ self call: (CuooraAddQuestion withCurrentUser: user) ];
				with: ' New question'.
			arg1 heading: 'Last questions'.
			(System getInstance
				obtainQuestionsRelevantToUser: user
				sortedByDateTake: 5)
				do: [ :arg2 | 
					RenderingHelper
						renderQuestion: arg2
						viewByUser: user
						inComponent: self
						usingBrush: arg1 ] ]