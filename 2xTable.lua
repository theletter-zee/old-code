--This script works but can definetly be improved (this was just me testing out double variables)

function variable(p,v)
 rnumber = math.random(1,13)
print("What is "..p.." x "..rnumber)
product = p*rnumber
local input = tonumber(io.read())
if input == product then print("<Correct!>") return variable(2,rnumber)
        --If WRONG then repeat the question
else
print("Guess again, what is "..p.." x "..rnumber)
local input = tonumber(io.read())
        --0 is used as a hint mechanic
   if input == (0) then print("(hint) The answer is "..2*rnumber) return tryAgain()
        --Correct answer
  elseif input == p*rnumber then print("<Correct!>") return variable(2,rnumber)
        --Incorrect answer repeats the question
  elseif input ~= p*rnumber then print("Guess again, what is "..p.." x "..rnumber) return tryAgain()
end end end 


function tryAgain()
local read = tonumber(io.read())
if read == (0) then print("(hint) The answer is "..2*rnumber) return tryAgain()
elseif read ~= 2*rnumber then print("Guess again, what is 2".." x "..rnumber) return tryAgain()
elseif read == 2*rnumber then print('<Excelsior!>')return variable(2,rnumber) end end

variable(2,rnumber)