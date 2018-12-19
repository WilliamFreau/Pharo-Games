Initialization
window 
   ^ window ifNil: [
      window := StandardWindow labelled: self defaultLabel.
		window extent: (self defaultSize + self margin).
   ]