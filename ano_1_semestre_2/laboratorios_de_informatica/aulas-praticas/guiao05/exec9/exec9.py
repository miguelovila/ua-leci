import requests, time

time_start = time.time()
rqst = requests.get('https://www.ua.pt/')
time_end = time.time()

print('Time elapsed:', time_end - time_start)
print('Response:', rqst.status_code)
print('Content:', rqst.text)