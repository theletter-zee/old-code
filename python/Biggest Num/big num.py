# returns the biggest integer


def func(num1,num2,num3):
    if num1 > num2 and num1 > num3:
        print(str(num1)+' Is the greatest num ('+str(len(str(num1)))+' digits)')
    elif num2 > num1 and num2 > num3:
        print(str(num2)+' Is the greatest num ('+str(len(str(num2)))+' digits)')
    elif num3 > num2 and num3 > num1:
        print(str(num3)+' Is the greatest num ('+str(len(str(num3)))+' digits)')


func(599756,4756440,999991)