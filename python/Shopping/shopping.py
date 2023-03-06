user = ''
bal = 125


while user != 'quit':
   user = input('Buy something: ').lower()


   Cart = {
    'Orange': 10,
    'Banana': 15,
    'Grapes': 13
   }


   if user == 'menu':
      for c in Cart:
         print(c,' $'+str(Cart[c]))
   if user == 'buy orange':
      bal = bal - Cart['Orange']
      print('You baught an Orange')
   if user == 'bal':
      print(bal)   
   if user == 'total':
      for x in range(1):
         print(Cart['Orange']+Cart['Banana']+Cart['Grapes'])