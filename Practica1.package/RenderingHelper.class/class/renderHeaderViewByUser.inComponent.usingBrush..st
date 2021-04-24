rendering
renderHeaderViewByUser: anUser inComponent: aComponent usingBrush: html
	html div
		id: 'header';
		with: [
			html div
				id: 'header-left';
				with: [
					html anchor
						callback: [ aComponent call: (CuooraHome withUser: anUser) ];
						with: [	html paragraph: 'CuOOra'	].
				].
			html div
				id: 'header-right';
				with: [
					html paragraph: ('User "{1}"' format: {anUser name}).
					html anchor
						callback: [ aComponent call: (CuooraLogin new) ];
						with: 'Log out'.
				].
		]
