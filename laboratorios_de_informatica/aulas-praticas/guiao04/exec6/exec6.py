import json

with open("usage_data.json", "r") as f:
    data = json.load(f)

print(data)