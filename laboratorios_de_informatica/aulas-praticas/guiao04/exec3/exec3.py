import time, psutil, csv

def main():
    with open("usage_data.csv", "w") as file_out:
        writer = csv.DictWriter(file_out, fieldnames=["time", "cpu_percent", "packets_sent", "packets_recv"], delimiter=";")
        writer.writeheader()
        for i in range(0,60):
            writer.writerow({"time": time.time(), "cpu_percent":psutil.cpu_percent(interval=1),"packets_sent":psutil.net_io_counters().packets_sent,"packets_recv":psutil.net_io_counters().packets_recv})
main()