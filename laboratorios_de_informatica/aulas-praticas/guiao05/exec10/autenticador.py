import requests

url = 'http://127.0.0.1:8080/actions/doLogin'
payload = {"username": "admin", "password": "admin"}

with requests.Session() as s:
    p = s.post(url, data=payload)
    print(p.text)

payload = {"username": "ana", "password": "ana2003"}

with requests.Session() as s:
    p = s.post(url, data=payload)
    print(p.text)