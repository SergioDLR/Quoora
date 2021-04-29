rendering
renderHeaderViewByUser: arg1 inComponent: arg2 usingBrush: arg3
arg3 div class:'mt-4';with:[

	| tmp2 |
	tmp2 := arg3 div.
	tmp2
		id: 'header';
		with: [ | tmp4 tmp8 |
			tmp4 := arg3 div.
			tmp4
				id: 'header-left';
				with: [ | tmp6 |
					tmp6 := arg3 anchor.
					tmp6
						callback: [ arg2 call: (CuooraHome withUser: arg1) ];
						with: [ arg3 paragraph: 'CuOOra' ] ].
			tmp8 := arg3 div.
			tmp8
				id: 'header-right';
				with: [ | tmp10 |
					arg3 paragraph: ('User "{1}"' format: {arg1 name}).
					tmp10 := arg3 anchor.
					tmp10
						class:'btn btn-danger';
						callback: [ arg2 call: CuooraLogin new ];
						with: 'Log out' ] ]
				].