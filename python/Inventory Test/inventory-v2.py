import collections


class color:
    PURPLE = '\033[95m'
    CYAN = '\033[96m'
    DARKCYAN = '\033[36m'
    BLUE = '\033[94m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RED = '\033[91m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
    END = '\033[0m'




board = [{'name': 'assasin','price': 150,'desc':'used for booping noses'},
         {'name': 'pie', 'price': 100, 'desc': 'heaven sent gift'},
         {'name': 'God\'s blessing', 'price': 300, 'desc':'Long ago the lord left fragments of his blessing'},
         {'name': 'pork chops', 'price': 120, 'desc':'not meant for vegans'}]




pack  = []
coins = 0
while True:
    x = input('` ')


    if x == 'shop':
        for item in board:
            name = item['name']
            price = item['price']
            desc = item['desc']
            print(color.BOLD + name, color.END,'price:',color.GREEN +str(price), color.END, desc)


    
    for i in board:
        if x == 'buy '+i['name'].lower() and coins >= i['price']:
            coins = coins - i['price']
            pack.append(i['name'])
            print('Successfully bought '+str(i['name']))
        elif x == 'buy '+i['name'].lower() and coins < i['price']:
            print('Insufficient funds')




    if x == 'inv':
        for item, count in collections.Counter(pack).items():
            print(f"{item}: {count}")




    if x == 'beg':
        coins = coins + 50
        print('<added 50  coins>')


    if x == 'bal':
        print('Balance: '+str(coins))