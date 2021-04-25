private
renderProfileOn: arg1
	| tmp2 |
	arg1 heading: ('Questions by {1}' format: {profileUser name}).
	tmp2 := arg1 anchor.
	tmp2
		callback: [ currentUser follow: profileUser ];
		with: ('Follow {1}' format: {profileUser name}).
	(System getInstance obtainQuestionsByUser: profileUser)
		do: [ :arg2 | 
			RenderingHelper
				renderQuestion: arg2
				viewByUser: currentUser
				inComponent: self
				usingBrush: arg1 ]