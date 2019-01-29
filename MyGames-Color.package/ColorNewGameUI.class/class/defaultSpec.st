specs
defaultSpec

	^ SpecColumnLayout composed
		newRow: [ :row | row add:  #lblNbCell ; add: #inputNbCell ] origin: 0@0 corner: 0.1@1;
		newRow: [ :row | row add: #lblNbColor ; add: #inputNbColor ] origin: 0.1@0 corner: 0.2@1;
		newRow: [ :row | row add: #validate ] origin: 0.2@0 corner: 0.2@1;
		yourself.