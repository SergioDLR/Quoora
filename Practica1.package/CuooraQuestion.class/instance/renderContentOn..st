rendering
renderContentOn: html
	self renderHeaderOn: html.
	html horizontalRule.
	self renderQuestionOn: html.	
	html horizontalRule.
	self renderFooterOn: html.