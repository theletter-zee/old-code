### This gets the age of someone
def age(year,bday):
    result = year - bday
    print('you are ',result)
    return result
myAge = age(2023,2004)
### This shows how many days someone is alive
def days_old(age):
    days = 365
    result = days*age
    print('youve been alive for ',result,' days')
days_old(myAge)