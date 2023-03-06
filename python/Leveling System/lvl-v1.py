import random


exp = 0
lvl = 1
exp_goal = 50


while True:
    plr = input("~: ")
    rnd = random.randint(5,10)
    if plr == "mine":
        print('mined '+str(rnd)+' exp')
        exp += rnd
    if plr == 'show':
        print('\nlvl:'+str(lvl)+' \n'+str(exp)+'/'+str(exp_goal)+'\n')
    if exp >= exp_goal:
        lvl = lvl + 1
        exp = 0
        exp_goal = exp_goal + exp_goal
