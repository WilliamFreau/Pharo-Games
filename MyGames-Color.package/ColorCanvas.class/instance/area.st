drawing
area
   ^ area ifNil: [
      area := FormCanvas extent: self extent.
      self clear.
      area]