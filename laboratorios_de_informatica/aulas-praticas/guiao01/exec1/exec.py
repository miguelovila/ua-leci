import sys
import hashlib

ficheiros = sys.argv[1:]
h = hashlib.sha1()
conteudo = ''

for ficheiro in ficheiros:
    with open(ficheiro, 'r') as f:
        conteudo += f.read()
h.update(conteudo.replace('\n', '').encode('utf-8'))

print(h.hexdigest())