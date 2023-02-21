import json

print('Login Or Register ')

def open_account(user):
  users = Username_Details()
  with open("name.json",'r') as f:
    users = json.load(f)
    users[str(user)] = {}
    users[str(user)]['name'] = ' '
    users[str(user)]['password'] = ' '
    with open("name.json",'w') as f:
      json.dump(users,f)
    return True


user = input('~ ').lower()



def Username_Details():
  with open("name.json",'r') as f:
    users = json.load(f)
  return users


if user == 'register':
  print('Enter a username')
  global username
  username = input('~ ')
  if username: #if username is already taken show another prompt (add later) 
    print(f'Your username is: {username}')
  
    print('\nEnter a Password (make sure you remember)')
    password = input('~ ')
    if password:
      print(f'Your password is stored as {password}')
      open_account(username)
      users = Username_Details()
      user = username
      users[str(user)]['name'] = username
      users[str(user)]['password'] = password
      with open("name.json",'w') as f:
        json.dump(users,f,indent=2)
elif user == 'login':
  print('Enter your username')
  if user == username:
    print('valid input')




