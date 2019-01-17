Core
sendOutput: output
	socket nextPut: output directionAsInt.
	socket flush.