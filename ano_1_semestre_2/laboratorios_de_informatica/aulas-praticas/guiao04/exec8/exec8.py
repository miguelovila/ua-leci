import time, psutil, json
from lxml import etree

# Alterei o exercicio 5 só porque prefiro trabalhar com json. A ideia é a mesma para o exercicio 3.

def getConfig():
    interval, cpu, network, ram = 0, "", "", ""
    xml = etree.parse("conf.xml")
    root = xml.getroot()
    for child in root:
        if child.tag == "interval":
            interval = child.text
        for grandchild in child:
            if grandchild.tag == "cpu":
                cpu = grandchild.attrib["active"]
            if grandchild.tag == "network":
                network = grandchild.attrib["active"]
            if grandchild.tag == "ram":
                ram = grandchild.attrib["active"]
    return int(interval), cpu, network, ram

def main():
    # Estou a usar o intervalo de tempo como o tempo de execução do programa.
    intl, cpu, net, ram = getConfig()
    data = {"stats": []}
    for i in range(0, intl):
        data["stats"].append({"time":time.time(),"cpu":psutil.cpu_percent(interval=1),"network":{"packets_sent":psutil.net_io_counters().packets_sent,"packets_recv":psutil.net_io_counters().packets_recv}})

    with open("usage_data.json", "w") as f:
        json.dump(data, f, indent=2)
main()