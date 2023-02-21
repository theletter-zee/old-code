function RockPaperScissors()
    io.write("Enter a command: ")
    local user = io.read()
    if user == ";s rps" then
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
          if input:lower() == RPS[rdn] then
            chances = chances - 1
            exp = exp + exp_gained
            print("Congrats, you beat the bot & gained "..exp_gained.." exp")
          elseif input ~= RPS[rdn] then
            chances = chances - 1 
            print(BQuote[rdn]..RPS[rdn]) --reminder to take away hp when user gets a question wrong
            end
        until chances == 0
        main = true
        end
    end
        
RockPaperScissors()