function introduction() 
    print("Enter your username")
    player = io.read()
    if player == player then 
    print("Welcome "..player..", follow the instructions below")
      elseif player == nil then 
    print("not a good username, try again") return introduction()
      end 
      end
      introduction()
    
    print("                                         \nType help for info about the location you're in.")
     local cash = 65
    
    function central_city()
    io.write("\nCentral city: ")
    local user = io.read()
    local help = [["Type "map" any where to see your location. Try visiting other areas!"]]
    local map = [[                        bank           
                      park - ! --- exit
                Webstore - market - blackmarket ]]
    local acc = "acc"
    if user == "map" then print(map) return central_city()
    elseif user == "cash" then print("\n        Pocket Money { "..cash.." }") return central_city() --global cash  
    elseif user == "help" then print(help) return central_city()
    elseif user == acc then print("Go to the bank to check your account") return central_city()
    elseif user == "up" then return bank()
    elseif user == "down" then return market()
    elseif user == "left" then return park()
    elseif user == "right" then return exit()
    elseif user == "relieve" then print("Are you nuts!? you can't do that here.") return central_city()
    elseif user == "night" then print("Stop trying to get arrested") return central_city()
    else print("You can't do that here. Try going: up, down, left or right.")
      return central_city()
    end
    end

  function bank()
    io.write("\nBank: ")
    local user = io.read()
    local help =[["Type "acc" to check your account info.
    "deposit (amount)" to insert money into your account.
    "withdraw (amount)" to get money from your account
    "cash" to see how much money you currently have on you
    Type "map" if you're lost ]]
    
    local map  = [[                            !           
                    park - central city --- exit
                Webstore - market - blackmarket ]]
    local acc = "acc" 
    if user == "map" then print(map) return bank()
    elseif user == "cash" then print("\n        Pocket Money { "..cash.." }") return bank()
    elseif user == "help" then print(help) return bank()
    elseif user == acc then return bankInfo()
    elseif user == "down" then return central_city()
    else print("You can only go down. You can type ;acc to check your account")
      return bank()
      end
    end

  function bankInfo()
      local bal = 500
      local rn = math.random(1,3)
      print("  Name: ",player,"\n  Job:   State Farm".."\n  Balance: ",bal,"\nMoney you currently have: "..cash)
      return bank()
    end
    
    function park()
    io.write("\nPark: ")
    local user = io.read()
    local map = [[                         bank           
                    ! - central city --- exit
                 Webstore - market - blackmarket ]]
    
    local help = [["slide" makes you slide down a slide.
    "relieve" there aren't any bathrooms at this park.
    "night" nothing else to do so might as well.
    Type "map" if you're lost
    ]]
    
    local Urine = {"If you keep doing this the cops are gonna notice", "You just peed in a public park",
    "I c u p"}
    local ru = math.random(1,3) --Urine # of strings
    local ra = math.random(3,25) -- # of people assinated
  
    if user == "slide" then return slide()
    elseif user == "relieve" then print(Urine[ru]) return park()
    elseif user == "night" then print("You just assasinated "..ra.." civilians & gained nothing") return park()
    elseif user == "right" then return central_city()
      -- Repeats
    elseif user == "map" then print(map) return park()
    elseif user == "help" then print(help) return park()
    elseif user == "acc" then print("You need to be at the bank to check your account.") return park()
    elseif user == "cash" then print("\n        Pocket Money { "..cash.." }") return park()
   
         else 
            print("Type `help` for your options here. Commands like: `cash` & `map` are global & can be used anywhere. ")
    return park()
    end
    end

  function slide() --This function is only activated when called on by park()
    local sliding = {"You just slid down a slide, gj.", "You found ", "Only you would slide that terribly.",
     "Do you have nothing better to do than to slide down a slide?"}
    local rs =  math.random(1,4) -- sliding table's # of strings
    local rmoney = math.random(6,15) --random money for the sliding table 2
    
    
    if sliding[rs] == sliding[2] then
      print(sliding[2]..'$'..rmoney..", guess this wasn't a complete waste.")
      cash = cash + rmoney
      return park()
    elseif sliding[rs] == sliding[rs] then print(sliding[rs])
       return park()
    end
    end
    local Bag = "Your bag is empty"
    local candy = 0
    local corn = 0
    local bacon = 0
    local gummy_bears = 0

   function market()
    io.write("\nMarket: ")
    local menu = [[Buy something or get out.
      Candy {$2}
      Corn  {$4}
      Bacon {$5}
      Gummy Bears {$3}]]
    local user = io.read()
    local map = [[                       bank           
               park - central city --- exit
               Webstore - ! - blackmarket ]]
    
    local help =[[Type "buy" and the item you want to buy.eg: buy bacon.
    Type "eat" and the item you wish to eat.eg: eat bacon.
    Type "menu" to see what you can buy & eat.
    Type "map" if you're lost.]]
    
         --Buy Candy
    if user:lower() == ("buy candy") then
       cash = cash - 2
       candy = candy + 1
       Bag = ("Candy: "..candy.."\nCorn: "..corn.."\nBacon: "..bacon.."\nGummy Bears: "..gummy_bears) 
       print("You purchased candy")
        return market()
         --Buy Corn
    elseif user:lower() == ("buy corn") then 
    cash = cash - 4 
    corn = corn + 1
    Bag = ("Corn: "..corn.."\nCandy: "..candy.."\nBacon: "..bacon.."\nGummy Bears: "..gummy_bears)
    print("You purchased corn") return market()
       --Buy Bacon
    elseif user:lower() == ("buy bacon") then 
    cash = cash - 5
    bacon = bacon + 1
    Bag = ("Bacon: "..bacon.."\nCandy: "..candy.."\nCorn: "..corn.."\nGummy Bears: "..gummy_bears)
      print("You purchased bacon") return market()
      --Buy Gummy Bears
    elseif user:lower() == ("buy gummy bears") then
    cash = cash - 3
    gummy_bears = gummy_bears + 1
    Bag = ("Gummy Bears: "..gummy_bears.."\nCandy: "..candy.."\nCorn: "..corn.."\nBacon: "..bacon)  
      print("You purchased gummy bears") return market()

  -- Eat candy
    elseif user:lower() == ("eat candy") then
      candy = candy - 1
      Bag = ("Candy: "..candy.."\nCorn: "..corn.."\nBacon: "..bacon.."\nGummy Bears: "..gummy_bears) 
    print("You just ate a piece of candy") return market()
    -- Eat Corn
    elseif user:lower() == ("eat corn") then 
    corn = corn - 1
    Bag = ("Corn: "..corn.."\nCandy: "..candy.."\nBacon: "..bacon.."\nGummy Bears: "..gummy_bears)
    print("You just devoured corn") return market()
    -- Eat Bacon
    elseif user:lower() == ("eat bacon") then 
    bacon = bacon - 1
    Bag = ("Bacon: "..bacon.."\nCandy: "..candy.."\nCorn: "..corn.."\nGummy Bears: "..gummy_bears)
    print("You just ate a piece of bacon") return market()
    -- Eat Gummy bears 
    elseif user:lower() == ("eat gummy bears") then
    gummy_bears = gummy_bears - 1
    Bag = ("Gummy Bears: "..gummy_bears.."\nCandy: "..candy.."\nCorn: "..corn.."\nBacon: "..bacon) 
    print("You just ate a yummy gummy") return market()
    
    elseif user:lower() == ("bag") then print(Bag) return market()
    elseif user:lower() == ("menu") then print(menu) return market()
      -- Repeats
    elseif user:lower() == ("help") then print(help) return market()
    elseif user:lower() == ("cash") then print("\n        Pocket Money { "..cash.." }") return market()
    elseif user:lower() == ("map") then print(map) return market()
    elseif user:lower() == ("acc") then print("You need to be at the bank to check your account") return market()
    elseif user:lower() == ("left") then return webstore()
    elseif user:lower() == ("right") then return blackmarket()
    elseif user:lower() == ("up") then return central_city()
    else print("You can't do that here") return market()
    end 
    end

  function webstore()
  io.write("\nWebstore: ")
  local user = io.read()
  local map = [[                       bank           
               park - central city --- exit
               ! - market - blackmarket ]]
  
  local help = [[Type "games" to see the different types of games you can play.
  to select a game type ;s (game). eg: ;s rps.
  Type "map" if you're lost.  ]]
  
  local games = [[to select a game type ;s (game). eg: ;s rps.
  Rock Paper scissors(rps) 
  Higher or Lower(h/l)
  ]]
  
  if user:lower() == ("games") then print(games) return webstore()
  elseif user:lower() == (";s rps") then return RockPaperSciccors()
  elseif user:lower() == (";s h/l") then return HigherOrLower()
   -- Repeats
  elseif user == "map" then print(map) return webstore()
  elseif user == "help" then print(help) return webstore()
  elseif user == "acc" then print("You need to be at the bank to check your account.") return webstore()
  elseif user == "cash" then print("\n        Pocket Money { "..cash.." }") return webstore()
  elseif user == "right" then return market()
  else print("Unknown command type 'help' for help") return webstore()
  end
  end

  function RockPaperSciccors() 
          print("You have 3 tries")
          local chances = 3
          local BQuote = {"Well played but I chose ","Woah that was close, luckily I went with ", "HA! I chose "}
          repeat 
          io.write("Rock/Paper/Scissors: ")
          local input = io.read()
          local rdn = math.random(1,3)       
          local RPS = {"rock", "paper", "scissors"}
            if input:lower() == RPS[rdn] then
              chances = chances - 1
              print("Congrats, you beat the bot.")
            elseif input ~= RPS[rdn] then
              chances = chances - 1 
              print(BQuote[rdn]..RPS[rdn]) 
              end
          until chances == 0
          return webstore()
      end
  
      function HigherOrLower()
  io.write("\nHigher/Lower: ")
  local user = io.read()
  local user = tonumber(user)
  local RD = math.random(1,5) -- For GeneratedMessage
  local gn1 = math.random(1,100)
  local gn2 = math.random(20,40)
  local gn3 = math.random(16,100)
  local gn4 = math.random(20,130)
  local gn5 = math.random(50,100)
  local GeneratedMessage = {"I'm thinking of a number between 1 & 100", "I'm thinking of a number between 20 & 40",
                      "I'm thinking of a number between 16 & 100", "I'm thinking of a number between 20 & 130",
                      "I'm thinking of a number between 50 & 100"}
  local GeneratedNumbers = {gn1, gn2, g3, gn4, gn5}
  
  print(GeneratedMessage[RD])
  if user == (GeneratedNumbers[RD]) then  print("Correct! :D") return webstore()
  
  elseif user ~= (GeneratedNumbers[RD]) then print("Incorrect D:") return webstore()
  else print("Invalid reponse") return HigherOrLower()
  end
  end

  function blackmarket()
  io.write("\nBlackMarket: ")
  local user = io.read()
  local map = [[                       bank           
                      park - central city --- exit
                      Webstore - market - ! ]]
  local help = [[Type "buy" to purchase something.
  Type "menu" to see what we offer
  Type "map" if you're lost ]]
  -- Very rushed lol (fix later)
  if user:lower() == "buy candy" then print("You just baught candy.But illegally.") return blackmarket()
  elseif user:lower() == "buy corn" then print("You just baught corn. But illegally.") return blackmarket()
  elseif user:lower() == "buy bacon" then print("You just baught bacon. But illegally.") return blackmarket()
  elseif user:lower() == "buy gummy bears" then print("You just baught gummy bears. But illegally.") return blackmarket()
  elseif user:lower() == "buy corn2" then print("You just baught corn 16 Tearabytes worth of corn") return blackmarket()
    -- Repeats
  elseif user == "map" then print(map) return blackmarket()
  elseif user == "help" then print(help) return blackmarket()
  elseif user == "acc" then print("You need to be at the bank to check your account.") return blackmarket()
  elseif user == "cash" then print("\n        Pocket Money { "..cash.." }") return blackmarket()
  elseif user == "left" then return market()
  else print("Unknown command type 'help' for help") return blackmarket()
  end
  end
  
  function exit()
  io.write("\nVoid: ")
  print("there's nothing here, are you sure u want to leave? Type yes or no")
  local user = io.read()
  local map =[[                          bank           
                      park - central city -!- exit
                      Webstore - market - blackmarket ]]
  if user:lower() == "yes" then print("Cya")
  elseif user:lower() == "no" then return central_city()
  elseif user:lower() == "map" then print(map) return exit()
  else print("You're in the void") return exit()
  end
  end
  
    central_city()