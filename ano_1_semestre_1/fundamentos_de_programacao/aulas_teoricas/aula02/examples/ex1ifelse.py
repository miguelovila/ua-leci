# Example: # Does the program always print END?
.

idade = int(input("idade? "))

print(idade)

if idade >= 18:
    res = "OK"
    print("MAIOR")
else: 
    res = "KO"

print(res)
print("FIM")

# Think and answer:
# Which are the possible outputs of the program?  OK/MAIOR/FIM  OK/MAIOR/KO/FIM  MAIOR/OK/FIM  MAIOR/KO/FIM  KO/FIM
