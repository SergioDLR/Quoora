private 
renderFooterOn: arg1
	| tmp2 |
	arg1 paragraph: 'No more answers'.
	tmp2 := arg1 anchor.
	tmp2
		callback: [ self
				call: (CuooraAddAnswer withCurrentUser: currentUser toQuestion: question) ];
		with: '(+) Answer this question'