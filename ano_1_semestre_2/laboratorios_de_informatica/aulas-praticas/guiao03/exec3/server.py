import socket

udp_server = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
udp_server.bind((..., ...)) # IP do servidor e porta do servidor

print("Servidor UDP à escuta na porta ... ...")

try:
    while(True):
        client_msg, client_ip = udp_server.recvfrom(4096)
        print("   Mensagem de {}:{}".format(client_ip,client_msg.decode('utf-8').replace('\n','')))
        udp_server.sendto(client_msg.upper(), client_ip)
finally:
    udp_server.close()
    print("Servidor UDP terminado.")