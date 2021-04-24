private 
renderQuestionOn: html
	RenderingHelper renderQuestion: question viewByUser: currentUser inComponent: self usingBrush: html. 
	(question answers) do: [ :answer | self renderAnswer: answer withBrush: html ].
	