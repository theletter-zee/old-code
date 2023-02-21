	Days = { "Sunday", "Monday", "Tuesday", 
                  "Wednesday",   "Thursday",  "Friday", "Saturday" }
Month = {  "January", "February", "March", "April", "May", "June",
                        "July", "August",  "September", "October", "November",  "December", }
Year =  { 
                 2000, 2001, 2002, 2003,
                 2004, 2005, 2006, 2007,
                 2009, 2010,  2011, 2012 }

Date = { math.random(1,  31) }
D =   Date
D[9]  = {}
rf = "rf" 
rl = "rl"
D[9][rf] = math.random(1, 28 )  --prints random day in febuary
D[9][rl] = math.random(1, 29)   --only used for febuary's leap year 
local rd = math.random(7)   --prints random day (monday tueday, etc.)
local rm = math.random(12) --prints random Month
local ry= math.random(12) --prints the random 12 years

function execute()
    if rm == 2 then  --If it's February 
        if Year[ry] % 4 == 0 and (Year[ry] % 100 ~= 0 or Year[ry] % 400 == 0) then
            print("Today is "..   Month[rm]   .." "..   D[9].rl   .." "..   Year[ry]   .." and it's currently "..   Days[rd])
        else
            print("Today is "..   Month[rm]   .." "..   D[9].rf   .." "..   Year[ry]   .." and it's currently "..   Days[rd])
        end
    else
        print(        "Today is "..   Month[rm]   .." "..   D[1]      .." "..   Year[ry]   .." and it's currently "..   Days[rd])
    end
end
execute()