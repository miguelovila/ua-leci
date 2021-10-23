# Example: compute a piecewise function (pt: função definida por ramos)

x = float(input("x? "))

if x < 10:
    f = 3
elif x < 20:
    f = 1+x
else:
    f = 1+2*x

print(f)
