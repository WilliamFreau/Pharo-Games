initialize-release
connectTo: ip port: port
	socket := ZdcSocketStream openConnectionToHost: ip port: port.