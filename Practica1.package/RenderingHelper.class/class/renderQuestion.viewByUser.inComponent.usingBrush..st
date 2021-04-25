rendering
renderQuestion: arg1 viewByUser: arg2 inComponent: arg3 usingBrush: arg4
	arg4 div
		with: [ | tmp2 tmp4 tmp6 tmp10 |
			tmp2 := arg4 anchor.
			tmp2
				callback: [ arg3 call: (CuooraQuestion withCurrentUser: arg2 andQuestion: arg1) ];
				with: [ arg4 paragraph: arg1 title ].
			tmp4 := arg4 div.
			tmp4
				class: 'question-topics';
				with: [ arg4 render: 'Topics: '.
					arg1 topics do: [ :arg5 | arg4 span: arg5 ] ].
			tmp6 := arg4 div.
			tmp6
				class: 'question-info';
				with: [ arg4 span
						with: [ | tmp8 |
							arg4 render: 'by '.
							tmp8 := arg4 anchor.
							tmp8
								callback: [ arg3
										call: (CuooraUserProfile withCurrentUser: arg2 andProfileUser: arg1 user) ];
								with: ('{1}' format: {arg1 user name}).
							arg4
								render:
									(' | at {1} | {2} answers | {3} likes | {4} dislikes'
										format:
											{arg1 creation asLocalStringYMDHM.
											arg1 answers size.
											(arg1 reactions count: [ :arg6 | arg6 emotion = #like ]).
											(arg1 reactions count: [ :arg7 | arg7 emotion = #dislike ])}) ] ].
			tmp10 := arg4 div.
			tmp10
				class: 'question-react';
				with: [ | tmp12 tmp15 |
					tmp12 := arg4 anchor.
					tmp12
						callback: [ | tmp13 |
							tmp13 := Reaction likeByUser: arg2.
							arg1 addReaction: tmp13 ];
						with: 'Like'.
					arg4 render: ' | '.
					tmp15 := arg4 anchor.
					tmp15
						callback: [ | tmp16 |
							tmp16 := Reaction dislikeByUser: arg2.
							arg1 addReaction: tmp16 ];
						with: 'Dislike' ] ]