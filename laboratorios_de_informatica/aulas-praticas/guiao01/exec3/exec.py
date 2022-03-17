import sys
from Crypto.Hash import SHA256

ficheiros = sys.argv[1:]

for ficheiro in ficheiros:
    h = SHA256.new()
    with open(ficheiro, 'rb') as f:
        buffer = f.read(512)
        while len(buffer) > 0:
            h.update(buffer)
            buffer = f.read(512)
    print(ficheiro, h.hexdigest())