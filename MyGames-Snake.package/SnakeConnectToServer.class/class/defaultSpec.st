specs
defaultSpec

	^ SpecColumnLayout composed
		newRow: [ :row | row add: #labelAddress; add: #address; add: #labelPort; add: #port ] origin: 0@0 corner: 1@0.1;
		newRow: [ :row | row add: #connect ] origin: 0@0.1 corner: 1@1;
		yourself.