>>>import Serialization

	class RegistrationForm(Form):
		username = TextField('Username', [validators.Length(min=4, max=20)])
    	email = TextField('Email Address', [validators.Length(min=6, max=50)])
    	password = PasswordField('New Password', [
        validators.Required(),
        validators.EqualTo('confirm', message='Passwords must match')
    	])
    	confirm = PasswordField('Repeat Password')
    	Serialization.SerializeUsernameToJson(username)
    

    

	
