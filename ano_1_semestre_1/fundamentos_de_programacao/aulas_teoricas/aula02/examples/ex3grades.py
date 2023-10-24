# Example: grade and classify

nt = float(input("nota T?" ))
np = float(input("nota P?" ))

nfinal = 0.3*nt + 0.7*np

if nfinal < 9.5:
    nfinal = float(input("nota ER?" ))

print(nfinal)

if nfinal < 9.5:
    cl = "Reprovado"
elif nfinal < 14:
    cl = "Suf"
elif nfinal < 17:
    cl = "Bom"
else:
    cl = "MB"

print(cl)

