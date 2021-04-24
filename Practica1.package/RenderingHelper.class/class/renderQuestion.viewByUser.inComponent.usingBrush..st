rendering
renderQuestion: question viewByUser: user inComponent: component usingBrush: html
					html div
						with: [
							html anchor
								callback: [ component call: (CuooraQuestion withCurrentUser: user andQuestion: question) ];
								with: [
									html paragraph: (question title).
								].
							html div
								class: 'question-topics';
								with: [
									html render: 'Topics: '.
									(question topics) do: [ :topic | html span: topic ].
								].
							html div
								class: 'question-info';
								with: [
									html span
										with: [ 
											html render: 'by '.
											html anchor
												callback: [ component call: (CuooraUserProfile withCurrentUser: user andProfileUser: (question user)) ];
												with: ('{1}' format: {question user name}).
											html render: (' | at {1} | {2} answers | {3} likes | {4} dislikes' format: {
												question creation asLocalStringYMDHM.
												question answers size.
												question reactions count: [ :reaction | reaction emotion = #like ].
												question reactions count: [ :reaction | reaction emotion = #dislike ].
											}).
										]
								].
							html div
								class: 'question-react';
								with: [
									html anchor
										callback: [ 
											| reaction |
											reaction := Reaction likeByUser: user. 
											question addReaction: reaction. 
										];
										with: 'Like'.
									html render: ' | '.
									html anchor
										callback: [
											| reaction |
											reaction := Reaction dislikeByUser: user. 
											question addReaction: reaction. 
										];
										with: 'Dislike'.
								].
					  ]