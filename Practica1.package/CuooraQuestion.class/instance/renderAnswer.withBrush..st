private 
renderAnswer: arg1 withBrush: arg2
arg2 div
	class:'row mt-3'; with:[
	arg2 div class:'col-8'; with:[
	arg2 div
	class:'card';
		with: [
			arg2 div class:'card-body';with:[
	arg2 div
		with: [ | tmp2 tmp6 tmp8 tmp10 |
			tmp2 := arg2 div.
			tmp2
				class: 'answer-by';
				with: [ | tmp4 |
					arg2 render: 'by '.
					tmp4 := arg2 anchor.
					tmp4
						callback: [ self
								call:
									(CuooraUserProfile
										withCurrentUser: currentUser
										andProfileUser: arg1 user) ];
						with: ('{1}' format: {arg1 user name}) ].
			tmp6 := arg2 div.
			tmp6
				class: 'answer-content';
				with: [ arg2 paragraph: arg1 text ].
			tmp8 := arg2 div.
			tmp8
				class: 'answer-info';
				with: [ arg2 span
						with: [ arg2
								render:
									('created at {1} | {2} likes | {3} dislikes'
										format:
											{arg1 creation asLocalStringYMDHM.
											(arg1 reactions count: [ :arg3 | arg3 emotion = #like ]).
											(arg1 reactions count: [ :arg4 | arg4 emotion = #dislike ])}) ] ].
			tmp10 := arg2 div.
			tmp10
				class: 'answer-react';
				with: [ | tmp12 tmp15 |
					tmp12 := arg2 anchor.
					tmp12
						callback: [ | tmp13 |
							tmp13 := Reaction likeByUser: currentUser.
							arg1 addReaction: tmp13 ];
						with: 'Like'.
					arg2 render: ' | '.
					tmp15 := arg2 anchor.
					tmp15
						callback: [ | tmp16 |
							tmp16 := Reaction dislikeByUser: currentUser.
							arg1 addReaction: tmp16 ];
						with: 'Dislike' ] ]
				]
			]
		]
	].