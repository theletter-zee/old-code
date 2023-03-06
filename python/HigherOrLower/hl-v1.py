x = ""
num = 30
tries = 3
limit = False
try:
    while x != num and not(limit):
        x = float(input("Enter a #: "))
        tries = tries - 1
        if tries == 0:
            print("Out of chances")
            limit = True


        if x > num:
            print("Go lower")
        elif x < num:
            print("Go higher")
        elif x == num:
            print("Congrats you won! The number was: "+str(num))
except ValueError as err:
    print(err)