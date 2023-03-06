rnd = 50
exp = 0
lvl = 1
exp_goal = 50
exp_chunks = 12


while True:
    plr = input("~: ")
    
    if plr == "mine":
        print('mined '+str(rnd)+' exp')
        exp += rnd
    if plr == 'show':
        print(f'\nlvl:{lvl}\n{exp}/{exp_goal}')
    while exp >= exp_goal:
        lvl += 1
        exp -= exp_goal
        exp_goal += exp_goal
    print('-' * int(exp_chunks * exp / exp_goal))