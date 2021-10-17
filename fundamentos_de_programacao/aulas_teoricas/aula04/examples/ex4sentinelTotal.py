# Example: 
# Read numbers until a sentinel (an empty string), and return their sum.
# JMR 2018

# This is a typical example of a "loop-and-a-half":
# a common situation where the exit condition
# should be tested in the middle of the loop body.

def inputTotal():
    tot = 0.0
    while True:
        s = input("valor? ")
        if s == "": break   # if empty line, stop repeating!
        v = float(s)
        tot = tot + v
    return tot

# MAIN PROGRAM
def main():
    tot = inputTotal()
    print(tot)

if __name__ == "__main__":
    main()

