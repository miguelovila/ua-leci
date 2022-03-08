import requests, json

address = "Universidade de Aveiro, 3810-193 Aveiro, Portugal"
servurl = "https://nominatim.openstreetmap.org/search.php?format=json&q=%s" % address

resposta = json.loads(requests.get(servurl).text)

print("Latitude: ", resposta[0]['lat'])
print("Longitude: ", resposta[0]['lon'])
print("Nome: ", resposta[0]['display_name'])
print("OSM ID: ", resposta[0]['osm_id'])