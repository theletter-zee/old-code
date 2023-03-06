from random import randint
# Note: -random heal potion (doesn't always work) - list of enemy names -coins
#add list of attacks   -player defense -limited regens
# ROUGH SCRIPT, VERY MESSY 


moves = '''
        (1)Attack
        (2)regen
        (3)defense
        (4)run'''
game = True
currency = 0 
print('Vegeta has approached you'+'\n'+moves)
while game:
    new_round = True
    player_fight = False


    player = {'name': 'Chris', 'attack_min': 5, 'attack_max': 7, 'hp': 100, 'regen': 9 , 'defense': 7}
    enemy = {'name': 'Vegeta', 'attack_min': 7, 'attack_max': 10, 'hp': 65}


    while new_round == True:


        player_won = False
        enemy_won = False
        enemyAttack = randint(enemy['attack_min'],enemy['attack_max'])
        
        # Encounter Script
        user = input('~: ')
        if user == 'stats':
            print('coins: '+str(currency))


        if user == '1':
            player_fight = True
            enemy['hp'] -= player['attack_min']
            if enemy['hp'] <= 0:
                player_won = True
            else:
                player['hp'] -= enemyAttack
                if player['hp'] <= 0:
                    enemy_won = True


        elif user == '2':
            if not player_fight:
                print('You have to attack someone to use this')
            else:
                player['hp'] = player['hp'] + player['regen']
                player['hp'] = player['hp'] - enemyAttack
                print('Splashed '+str(player['regen'])+' hp back\n------------------')
        
        elif user == '3':
            player['hp'] += player['defense']
            player['hp'] -= enemyAttack
            
        if user == '4':
            new_round = False
            game = False 


        elif player_won == False and enemy_won == False:
            print('You did '+str(player['attack_min'])+' dmg '+' (You have '+str(player['hp'])+' hp left)')
            print(enemy['name']+' did '+str(enemyAttack)+' dmg ('+enemy['name']+'  has '+str(enemy['hp'])+' hp left)')
            print(moves)


        elif player_won:
            currency += 5
            print('You Won!!\n+5 coins')
            new_round = False
        elif enemy_won:
            print('You lost :(')
            new_round = False