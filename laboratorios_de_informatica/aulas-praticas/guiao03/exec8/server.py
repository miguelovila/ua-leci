import socket, select

def main ():
	tcp_server = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	tcp_server.bind (("0.0.0.0", 8080))
	tcp_server.listen (10)
	connections = []
	
	connections.append (tcp_server)
	print ("Chat server started")

	while True:
		# Get the list sockets which are ready to be read through select
		read_sockets = select.select (connections, [], [])[0]

		for sock in read_sockets:
			#New connection
			if sock == tcp_server:
                # Handle the case in which there is a new connection received through server_socket
				client_s, addr = tcp_server.accept ()
				connections.append (client_s)
				print ("Client connected: %s" % str (addr))
			else:
				#Some incoming message from a client, process it
				try:
					# Incoming message
					data = sock.recv (4096)
					if len (data) != 0:
						print ("Fom client: %s" % str (sock.getpeername()))
						print ("Got Data: " + data.decode ('utf-8'))
						
					else:
						print ("Client disconnected: %s" % str (sock.getpeername()))
						sock.close()
						connections.remove (sock)
						break
					#Do not send the message to master socket
					#Create the message identifying the client
					message = ('<' + " Fom client: " + str(sock.getpeername()) + '> \n').encode('utf-8') +  data.upper()
					for client in connections:
						if client != tcp_server: # Eventually do not send the message to the source client !!!
							client.send (message)

				except:
					print ("Client socket error: %s" % str (addr))
					sock.close()
					connections.remove (sock)
					continue

	tcp_server.close()

main ()
