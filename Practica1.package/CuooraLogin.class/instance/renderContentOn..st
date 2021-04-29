rendering
renderContentOn: htmlCanvas

htmlCanvas div class:'container';
with:[
	htmlCanvas heading class:'mb-5'; with:'Quoora'.
htmlCanvas div class:'row'; with: [  
	htmlCanvas div class:'col'; with:[
	htmlCanvas paragraph: 'Log in  Quoora'.
	htmlCanvas form: [ 
			htmlCanvas section
		with:[
			htmlCanvas div class:'mb-3';with:[
		htmlCanvas textInput placeholder:'User'; class:'form-control';on: #username of: self.
		].

		htmlCanvas textInput placeholder:'Password';  class:'form-control'; on: #password of: self.
		htmlCanvas break.
		htmlCanvas submitButton
		class:'btn btn-primary';
			callback: [ self login ];
			value: 'Log in'.
	].

].
].]]