rendering
renderLastQuestions: html
	html div
		id: 'content';
		with: [
			html anchor
				callback: [	self call: (CuooraAddQuestion withCurrentUser: user) ];
				with: '(+) New question'.
			html heading: 'Last questions'.
			((System getInstance) obtainQuestionsRelevantToUser: user sortedByDateTake: 5)
				do: [ :question | RenderingHelper renderQuestion: question viewByUser: user inComponent: self usingBrush: html ]
		].