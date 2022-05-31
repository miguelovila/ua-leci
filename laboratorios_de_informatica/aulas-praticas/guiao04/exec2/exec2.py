import csv
import random

def main():
    with open("rand.csv", "w") as file_out:
        writer = csv.DictWriter(file_out, fieldnames=["time", "value"], delimiter=":")
        writer.writeheader()
        for i in range(1,10):
            writer.writerow({"time": i, "value" : random.randint(1,100)} )
main()