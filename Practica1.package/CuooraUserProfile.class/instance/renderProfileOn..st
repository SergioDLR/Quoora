private
renderProfileOn: html
	html heading: ('Questions by {1}' format: {(profileUser name)}).
	html anchor
		callback: [ currentUser follow: profileUser ];
		with: ('Follow {1}' format: {(profileUser name)}).
	((System getInstance) obtainQuestionsByUser: profileUser)
		do: [ :question | RenderingHelper renderQuestion: question viewByUser: currentUser inComponent: self usingBrush: html ]
