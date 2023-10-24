# Example: using a boolean variable (a flag)

response = input("Is it raining? ")
isRaining = response == "yes"
print(isRaining)

if isRaining :
    whatToDo = "take an umbrella"
    print("too bad!")
else:
    whatToDo = "enjoy!"
    print("good!")

print(whatToDo)

