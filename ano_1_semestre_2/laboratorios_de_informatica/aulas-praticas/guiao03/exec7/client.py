import socket
import select
import sys

udp_client = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
udp_client.bind(("127.0.0.1", 0))

try:
    while True:
        rsocks = select.select([udp_client, sys.stdin, ], [], [])[0]
        for sock in rsocks:
            if sock == udp_client:
                # Informação recebida no socket
                b_data, addr = udp_client.recvfrom(4096)
                sys.stdout.write("%s\n" % b_data.decode("utf-8"))
            elif sock == sys.stdin:
                # Informação recebida do teclado
                str_data = sys.stdin.readline()
                udp_client.sendto(str_data.encode("utf-8"), ("127.0.0.1", 1024))




    #while True:
    #    udp_client.sendto(input("Mensagem: ").encode(), ("127.0.0.1", 1024))
    #    server_msg = udp_client.recvfrom(4096)
    #    print("Resposta do servidor: {}".format(server_msg[0].decode('utf-8').replace('\n','')))
finally:
    udp_client.close()
    print("Cliente UDP terminado.")