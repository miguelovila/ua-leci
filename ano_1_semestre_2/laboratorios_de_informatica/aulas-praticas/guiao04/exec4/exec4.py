import json

def main():
    data = [{"time": 1394984189,"cores":[{"name": "cpu1", "value": 12},{"name": "cpu2", "value": 55},
                                         {"name": "cpu3", "value": 24},{"name": "cpu4", "value": 2}]},
            {"time": 1394984190,"cores":[{"name": "cpu1", "value": 66},{"name": "cpu2", "value": 10},
                                         {"name": "cpu3", "value": 75},{"name": "cpu4", "value": 99}]}]
    print(json.dumps(data, indent=2))

main()