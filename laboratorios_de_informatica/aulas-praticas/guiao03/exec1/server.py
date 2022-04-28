import socket

udp_server = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
udp_server.bind(("127.0.0.1", 1234))

print("Servidor UDP à escuta na porta 1234...")

try:
    while(True):
        client_msg, client_ip = udp_server.recvfrom(4096)
        print("   Mensagem de {}:{}".format(client_ip,client_msg.decode('utf-8').replace('\n','')))
        udp_server.sendto(client_msg.upper(), client_ip)
finally:
    udp_server.close()
    print("Servidor UDP terminado.")