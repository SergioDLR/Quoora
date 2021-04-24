private 
renderAnswer: anAnswer withBrush: html
	html div
		with: [
			html div
				class: 'answer-by';
				with: [ 
					html render: 'by '.
					html anchor
						callback: [ self call: (CuooraUserProfile withCurrentUser: currentUser andProfileUser: (anAnswer user)) ];
						with: ('{1}' format: {anAnswer user name}).
			  ].
			html div
				class: 'answer-content';
				with: [
					html paragraph: (anAnswer text).
				].
			html div
				class: 'answer-info';
				with: [
					html span
						with: [ 
							html render: ('created at {1} | {2} likes | {3} dislikes' format: {
								anAnswer creation asLocalStringYMDHM.
								anAnswer reactions count: [ :reaction | reaction emotion = #like ].
								anAnswer reactions count: [ :reaction | reaction emotion = #dislike ].
							}).
						]
				].
			html div
				class: 'answer-react';
				with: [
					html anchor
						callback: [ 
							| reaction |
							reaction := Reaction likeByUser: currentUser. 
							anAnswer addReaction: reaction. 
						];
						with: 'Like'.
					html render: ' | '.
					html anchor
						callback: [
							| reaction |
							reaction := Reaction dislikByUser: currentUser. 
							anAnswer addReaction: reaction. 
						];
						with: 'Dislike'.
				].
		]	