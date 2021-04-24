private 
renderFooterOn: html
	html paragraph: 'No more answers'.
	html anchor
		callback: [ self call: (CuooraAddAnswer withCurrentUser: currentUser toQuestion: question) ];
		with: '(+) Answer this question'