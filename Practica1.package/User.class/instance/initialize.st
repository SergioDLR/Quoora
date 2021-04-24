initialization
initialize
	creation := DateAndTime now.
	followList := Set new.
	topics := Set new.
	self follow: self.