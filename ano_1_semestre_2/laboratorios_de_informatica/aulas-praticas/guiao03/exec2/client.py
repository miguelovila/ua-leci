import socket

udp_client = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
udp_client.bind(("127.0.0.1", 0))

try:
    while True:
        udp_client.sendto(input("Mensagem: ").encode(), ("127.0.0.1", 1234))
        server_msg = udp_client.recvfrom(4096)
        print("Resposta do servidor: {}".format(server_msg[0].decode('utf-8').replace('\n','')))
finally:
    udp_client.close()
    print("Cliente UDP terminado.")