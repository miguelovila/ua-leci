from subprocess import Popen, PIPE
import sys

proc = Popen('ls -la', stdout=PIPE, shell=True)
return_code = proc.wait()
for line in iter(proc.stdout.readline, b''):
    if sys.argv[1] not in line.decode('utf-8'):
        print(line.decode('utf-8'), end='')