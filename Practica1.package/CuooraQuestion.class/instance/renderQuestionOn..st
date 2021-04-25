private 
renderQuestionOn: arg1
	RenderingHelper
		renderQuestion: question
		viewByUser: currentUser
		inComponent: self
		usingBrush: arg1.
	question answers
		do: [ :arg2 | self renderAnswer: arg2 withBrush: arg1 ]