# Example: Print a multiplication table
# Like:
#   1 x 1  =   1
#   1 x 2  =   2
#   ...
#  10 x 10 = 100
#
# JMR 2019    

def main():
    for a in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]:
        for b in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]:
            print("{} x {} = {}".format(a, b, a*b))

# Modify the program so it prints an empty line after each group of ten.
# Also, use format specifiers to align the numbers.

if __name__ == "__main__":
    main()

