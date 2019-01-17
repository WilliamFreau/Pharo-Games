Core
computeStep: in
	| size message input output |
	
	size := socket next: 4.
	message := socket next size.
	input := FLMaterializer materializeFromByteArray: message.
	
	output := SnakeOutput new.
	self computeStep: input output: output.
	
	lastInput := input.
	self sendOutput: output.