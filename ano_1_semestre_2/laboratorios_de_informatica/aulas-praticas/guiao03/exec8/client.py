import socket

def main():
    tcp_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_server.connect(("127.0.0.1", int(input("Porta: "))))

    try:
        while 1:
            tcp_server.send(input("Mensagem: ").encode("utf-8"))
            server_msg = tcp_server.recv(4096)
            print("Resposta: {}".format(server_msg.decode("utf-8").replace('\n','')))
    finally:
        tcp_server.close()

main()