# Example: finding and counting leap years
# JMR 2019

def isLeapYear(year):
    return year%4 == 0 and year%100 != 0 or year%400 == 0


# Print all leap years in range [year1, year2[.
def printLeapYears(year1, year2):
    ano = year1
    while ano < year2:
        if isLeapYear(ano):
            print(ano)
        ano = ano + 1


# Return the number of leap years in range [year1, year2[.
def numLeapYears(year1, year2):
    num = 0
    ano = year1
    while ano < year2:
        if isLeapYear(ano):
            num += 1
        ano += 1
    return num


# Return a list of leap years in range [year1, year2[.
# (We'll get back to lists later in the course.)
def listLeapYears(year1, year2):
    lst = []
    ano = year1
    while ano < year2:
        if isLeapYear(ano):
            lst.append(ano)
        ano = ano + 1
    return lst
    ## This would be simpler with a list comprehension!

## Can you rewrite the previous functions using for loops (and range function)?


# MAIN PROGRAM:
def main():
    #printLeapYears(1870, 2020)

    x = numLeapYears(1970, 2070)
    print("Between 1970 and 2070 there are", x, "leap years")

    print(listLeapYears(1970, 2002))


if __name__ == "__main__":
    main()

