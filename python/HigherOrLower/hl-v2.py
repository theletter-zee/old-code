import random
num = 10
chances = 5
active_game = True
while active_game:
  try:
    user = int(input('Guess a #: '))
    if user == num:
      print('\n\n\nCongrats! The random number was '+str(num)+'\n\n\nwould you like to play again? (Y/N)')
      exit = input('~: ').lower()
      if exit == 'n' or exit == 'no':
        print('\nGoodbye!')
        active_game = False
      elif exit == 'y' or exit == 'yes':
        chances = 3
      else:
        print('Not a valid response (Y/N)')
        active_game = False
    elif user > num:
      chances -= 1
      print('Guess lower (you have '+str(chances)+' chances left')
    elif user < num:
      chances -= 1
      print('Guess higher (you have '+str(chances)+' chances left')
    if chances == 0:
      print('\n\n\noop- you lost... the random # was '+str(num)+' Do you want to try again? (Y/N)\n\n\n')
      exit2 = input('~: ').lower()
      if exit2 == 'n' or exit2 == 'no':
        print('Goodbye!!')
        active_game = False
      elif exit2 == 'y' or 'yes':
        chances = 3
        active_game = True
      else:
        print('Not a valid response (Y/N)')
  except ValueError as x:
    print('Error: ',x,'input something else')