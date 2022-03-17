import sys
import hashlib

ficheiros = sys.argv[1:]

for ficheiro in ficheiros:
    h = hashlib.sha1()
    with open(ficheiro, 'rb') as f:
        buffer = f.read(512)
        while len(buffer) > 0:
            h.update(buffer)
            buffer = f.read(512)
    print(ficheiro, h.hexdigest())