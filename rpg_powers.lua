function introduction() 
    print("Enter your username")
     player = io.read()
    if player == player then 
        print("Salutations "..player..", follow the instructions below")
    elseif player == nil then 
        print("not a good username, try again")
    elseif player == " " then
        print("not a good username, try again")
    end 
    end
    introduction() 
    
    print("\nType \";help\" or \";h\" for info about commands")
    inf =[[List of commands:  
    ;Stats Shows abilities of user 
    ;profile = Info about user        
    ;minigames List the games.
    ;s Used to select the minigame you want. Example: ;shigher or lower
    ;upgrade upgrades your desired ability. Example, ;upgrade agility
        ]] 

    function Health()
        Hp = 120
        Hp_max = Hp
        Lim = Hp * 2  
        Lim = false 
    end
    Health()
    function Experience()
        exp = 0
        exp_max = 140
        if exp == 140 then
       Lim = true 
            exp_max = exp_max * 2
            exp = 0
        end
    end
    Experience()

    function Points()  
        points = 3
        points_bool = true
       if points <=0 then
           points_bool = false
           if points_bool == false then
       points = 0
       end
       end
       end
       Points()
    while Hp > 0 do
      -- Help Information
      user = io.read()

        if user == ";help" then
                print(inf)             
        elseif user == ";h" then print(inf) 
        end 
        
 --Upradeable Abilities along with points

       
        function Strength()
            str = 1
            if points_bool == true then
            if user:lower() == ";upgrade str" then
             str = str + 1
             points = points - 1
             print("Your Strength is now "..str)
         elseif user:lower() ==";upgrade strength" then
          str = str + 1
          points = points - 1
          print("Your Strength is now "..str)
         elseif points_bool == false then print("Not Enough Points")
         end
       end
    end
    Strength()
               function Agility()
                if points_bool == true then
                  agility = 1
                  if user:lower() == ";upgrade agility" then
                   agility = agility + 1
                   print("Your Agility is now "..agility)
                elseif points_bool == false then print("Not Enough Points")
                  end
               end
            end
            Agility()
       
             function Endurance()
                if points_bool == true then
             endurance = 1
             if user:lower() ==";upgrade endurance" then
             endurance = endurance + 1
             print("Your Endurance is now "..endurance)
            elseif points_bool == false then print("Not Enough Points")
             end
           end
        end
        Endurance()

--Statistics Info
         function Statistics()
         if user:lower() == ";stats" then      
            print("Username: "..player.."\nHP: "..Hp.."/"..Hp.."\nStrength: "..str.."\nAgility: "..agility.."\nEndurance: "..endurance.."\nExp: "..exp.."/"..exp_max.."\nPoints: "..points)
         end
        end
        Statistics()
       
        minis = [[ use ;s to select a minigame
            Boss: Gather up enough exp to fight the boss
            
           Bot: Random leveled bots will fight you 
           
           Rock Paper Sciccors
           
           Random Topic: You're given a random topic & you have to guess A-E which response about it is right
           
           Higher or Lower: Guess which character/thing is more popular 
           
           High or Low Math: A random # will be generated and you have a certain amount of tries to guess it]]
    
    if user == ";minigames" then  
            print(minis)
        end
    end