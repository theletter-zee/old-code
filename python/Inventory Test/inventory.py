import collections
board = {'rare pepe':2,'paper':3,'bug':1}

pack  = []
coins = 0
while True:
    x = input('` ')
    for i in board:
        if x == 'buy '+i:
            board[i] -= 1
            pack.append(i)               
    if x == 'shop':
        for v in board:
            print(v+': '+str(board[v]))
    if x == 'beg':
        coins = coins + 50
        print('<added 50  coins>')
    if x == 'pls inv':
        for item, count in collections.Counter(pack).items():
            print(f"{item}: {count}")