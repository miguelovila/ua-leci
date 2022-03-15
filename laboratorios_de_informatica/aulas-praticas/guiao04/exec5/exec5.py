import time, psutil, json

def main():
    data = {"stats": []}
    for i in range(0,60):
        data["stats"].append({"time":time.time(),"cpu":psutil.cpu_percent(interval=1),"network":{"packets_sent":psutil.net_io_counters().packets_sent,"packets_recv":psutil.net_io_counters().packets_recv}})
    with open("usage_data.json", "w") as f:
        json.dump(data, f, indent=2)
main()