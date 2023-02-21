--Doesn't work that well and it's incomplete

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
       -;up (ability) upgrades your desired ability. 
    ;profile = Info about user        
    ;minigames List the games.
    ;s Used to select the minigame you want. Example: ;shigher or lower
    ;upgrade upgrades your desired ability. Example, ;upgrade agility
        ]] 

    function Health()
        Hp = 120
        Hp_max = 120  
    end
    Health()
    function Experience()
        exp = 0
        maxExp = 140
        if exp >= maxExp then
            maxExp = maxExp * 2
            Hp_max = Hp_max + 44
        end
    end
    Experience()
    --individual abilities & points (extremely messy script lol)
    strength = 1
    agility = 1 
    endurance = 1
    points = 4
    main = true

while main == true do
    io.write("~: ")
    user = io.read()

      -- Help Information
        if user == ";help" then        
                print(inf)             
        elseif user == ";h" then           
            print(inf) 
       end 

 --Upradeable Abilities along with point consumption    
 function Strength()
    if points > 0 then 
if user ==";up str" then
    strength = strength + 1
    points = points - 1 
    print("Your strength is now "..strength)
end
end
end
Strength()
               function Agility()
                if points > 0 then 
                    if user ==";up agility" then
                        agility = agility + 1
                        points = points - 1 
                        print("Your Agility is now "..agility)
                    elseif points <=0 then
                        if user ==";up agility" then 
                            print("Not enough points, you currently have "..points.." points.")
                        end
                    end
                end
            end
            Agility()
       
             function Endurance()
                if points > 0 then 
                    if user ==";up endurance" then
                    endurance = endurance + 1
                        points = points - 1 
                        print("Your endurance is now "..endurance)
                    elseif points <=0 then
                        if user ==";up endurance" then 
                            print("Not enough points, you currently have "..points.." points.")
                        end
                    end
                end
        end
        Endurance()
--Statistics Info
         function Statistics()
         if user:lower() == ";stats" then      
            print("Username: "..player.."\nHP: "..Hp.."/"..Hp_max.."\nStrength: "..strength.."\nAgility: "..agility.."\nEndurance: "..endurance.."\nExp: "..exp.."/"..maxExp.."\nPoints: "..points)
         end
        end
        Statistics()
       
    local minis = [[ use ;s to select a minigame
    Boss: Gather up enough exp to fight the boss
    
   Bot: Random leveled bots will fight you 
   
   Rock Paper Sciccors:
   
   Random Topic: You're given a random topic & you have to guess A-E which response about it is right
   ]]
    if user == ";minigames" then  
            print(minis)
        end
        if user == '$up' then
            exp = exp + 138
        end

        function RockPaperSciccors()
            if user:lower() == ";s rps" then
                main = false
                print("You have 3 tries")
                local chances = 3
                local BQuote = {"Well played but I chose ","Woah that was close, luckily I went with ", "HA! I chose "}
                repeat 
                io.write("Rock/Paper/Scissors: ")
                local input = io.read()
                local exp_gained = math.random(4,23)  
                local rdn = math.random(1,3)       
                local RPS = {"rock", "paper", "scissors"}
                local rhp = math.random(1,4) --for hp
                  if input:lower() == RPS[rdn] then
                    chances = chances - 1
                    exp = exp + exp_gained
                    print("Congrats, you beat the bot & gained "..exp_gained.." exp")
                  elseif input ~= RPS[rdn] then
                    chances = chances - 1 
                    Hp = Hp - rhp
                    print(BQuote[rdn]..RPS[rdn].."\nYou lost "..rhp.."hp") 
                    end
                until chances == 0
                main = true
                end
            end
            RockPaperSciccors()


            function RandomTopic()
      if user:lower() == ";s random topic" then 
    main = false
    print("Select a Topic by typing ;s. eg. ;s Art easy")
    repeat 
    io.write("~m: ")
    local input = io.read()
                          --Topics that can be chosen to play
    local Topic = {"Spongebob", "Art", "Games", "Youtube", "Science", "Anime", "Music", "Spanish"}

    if input:lower() == ";s spongebob easy" then --Spongebob Topic  
            --Script for Easy mode
        local rdq = math.random(1,9) 
        local rda = math.random(1,4)
        local Questions = {"What house does spongebob live in?", "How does sandy breathe under water?", 
                           "What animal is Sandy?", "What is Spongebob?", "Where does Patrick live?",
                           "How would you describe squidwards personality?", "Where does Spongebob work?",
                           "What is Spongebob's pet.", "What did spongebob name his pet?" }
        local Answers = {"In a pineapple", "Fish bowl", "Squirl", "Sponge", "under a rock", "grumpy", "Krusty Krab",
                         "Snail", "Gary"}
        local Fanswers = {"in a Sponge", "a dome", "under a rock",}

        local abc = {"A. ", "B. ", "C. ", "E. "}
        print(Questions[1])
        for i,v in pairs(abc) do
            print(v,Fanswers[rda])

    end
end
until main == true
end
end
RandomTopic()
end