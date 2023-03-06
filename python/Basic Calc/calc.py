num1 = float(input("Enter a #: "))
b = input("Enter an sign (+ / - *): ")
num2 = float(input("Enter a #: "))


if b == "+" :
   print(num1+num2)
elif b == "/":
    print(num1/num2)
elif b == "-":
    print(num1-num2)
elif b == "*":
    print(num1*num2)
elif b == "^":
    print(num1^num2)