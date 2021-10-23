# Example: a classifier

x = float(input("Altura (m)? "))

#print(x)

if x > 1.9:
    cl = "alto"
elif x < 1.9 and x > 1.6:
    cl = "medio"
else:
    cl = "baixo"

print("És", cl)

# One specific value of X is wrongly classified in the program.  Can you spot it?
# What kind of error is this?  Syntax error?  Runtime error?  Semantic error?

