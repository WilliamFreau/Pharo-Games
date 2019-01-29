drawing
extent: aPoint
   | newArea |
   super extent: aPoint.
   newArea := FormCanvas extent: aPoint.
   newArea 
      fillColor: self defaultColor;
      drawImage: self area form at: 0@0.
   area := newArea