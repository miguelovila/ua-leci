# Examples showing how to use str.format method.
# jmr@ua.pt 2022
#
# You may also like:
# https://www.digitalocean.com/community/tutorials/how-to-use-string-formatters-in-python-3
# https://docs.python.org/3.6/library/string.html#format-string-syntax

s = "Text"      # a string
m = 23          # an integer
n = 764         # another integer
x = 2.3456      # a real
y = 5.67891e+2  # another real

# Allignment
print( "({})".format("Text") )
print( "({:20})".format("Text") )
print( "({:>20})".format("Text") )
print( "({:^20})".format("Text") )
print( "({:<20})".format("Text") )
print()

# Formatting ints
print( "m=({:6d})".format(m) )
print( "n=({:6d})".format(n) )
print( "n=({:06d})".format(n) )
print( "n=({:<6d})".format(n) )
print( "m=({:6x})".format(m) )
print( "m=({:6b})".format(m) )
print()

# Formatting floats
print( "x=({:f})".format(x) )
print( "x=({:.1f})".format(x) )
print( "x=({:.2f})".format(x) )
print( "x=({:10f})".format(x) )
print( "x=({:10.2f})".format(x) )
print( "y=({:10.2f})".format(y) )
print()

# Formatting floats in scientific notation
print( "x=({:10.2e})".format(x) )
print( "y=({:10.2e})".format(y) )
print()

# Floats in general format
print( "x=({:10.3g})".format(x) )
print( "y=({:10.3g})".format(y) )
print()

# Multiple values and formats
print( "The values are:\ns:_{:^10s}_n:_{:<10d}_x: {:10.2e}_".format(s, n, x) )

