print("Welcome young las to the # game")
 hp = 6
math.randomseed(os.time())
 rn = math.random(1, 100)
        
while hp > 0 do
 print("Hp: ".. hp)

  user = io.read()
  user = tonumber(user)
  

if user == nil then print("Invalid Response")
elseif user < rn then 
    hp = hp - 1
    print("Higher than  " .. user )
elseif user  > rn then 
     hp = hp - 1
print("Lower than  " .. user)
elseif user == rn then print("Hit the nail right on the head, Great Job!")
   
        break
end 
end

while hp <= 0 do 
    print("Game Over")
    break
end