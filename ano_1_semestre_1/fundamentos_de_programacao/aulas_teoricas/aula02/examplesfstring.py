# Examples showing how to use f-strings instead of str.format.
# jmr@ua.pt 2022
#
# You may also like:
# https://docs.python.org/3/reference/lexical_analysis.html#formatted-string-literals

s = "Text"      # a string
m = 23          # an integer
n = 764         # another integer
x = 2.3456      # a real
y = 5.67891e+2  # another real

# Allignment
print( f"({s})" )
print( f"({s:20})" )
print( f"({s:>20})" )
print( f"({s:^20})" )
print( f"({s:<20})" )
print()

# Formatting ints
print( f"m=({m:6d})" )
print( f"n=({n:6d})" )
print( f"n=({n:06d})" )
print( f"n=({n:<6d})" )
print( f"m=({m:6x})" )
print( f"m=({m:6b})" )
print()

# Formatting floats
print( f"x=({x:f})" )
print( f"x=({x:.1f})" )
print( f"x=({x:.2f})" )
print( f"x=({x:10f})" )
print( f"x=({x:10.2f})" )
print( f"y=({y:10.2f})" )
print()

# Formatting floats in scientific notation
print( f"x=({x:10.2e})" )
print( f"y=({y:10.2e})" )
print()

# Floats in general format
print( f"x=({x:10.3g})" )
print( f"y=({y:10.3g})" )
print()

# Multiple values and formats
print( f"The values are:\ns:_{s:^10s}_n:_{n:<10d}_x: {x:10.2e}_" )

