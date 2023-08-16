import socket

def main():
    tcp_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_server.bind(("127.0.0.1", 0))
    print("Servidor TCP à escuta na porta {}...".format(tcp_server.getsockname()[1]))
    try:
        tcp_server.listen(1)
        client = tcp_server.accept()[0]
        while 1:
            client_msg = client.recv(4096)
            print("Mensagem recebida de {}:{}".format(client.getpeername(), client_msg.decode('utf-8').replace('\n','')))
            client.send(client_msg.upper())
    finally:
        client.close()
        tcp_server.close()
        
main()