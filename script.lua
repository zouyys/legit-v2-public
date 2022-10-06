getgenv().Key = "t" -- toggle key, basically if someone asks you to shoot near them you can untoggle the silent aim to look legit.

getgenv().FovKey = "z" -- fov switch key, if you dont wanna look blatant long range rev

getgenv().ResolveKey = "m" -- resolves anti locks

getgenv().MacroKey = "x" -- to use the built in lua macro

getgenv().AimlockKey = "q" -- soft aim key

getgenv().Prediction = 0.121 -- prediction, this number in here is for 30-40 ping

getgenv().Hitchance = 85 -- hitchance, if it is set to 100 then it will hit all shots most likely, 60-85 are reccomended for legit

getgenv().Parts = {"Head", "UpperTorso", "LowerTorso", "RightFoot", "LeftFoot"}

getgenv().FOV = 14 -- how big the fov size is, 5-9 if ur good at the game, 10-13 if ur slightly bad

getgenv().FOVSides = 25 -- this is self explanitory 

getgenv().ShowFOV = true -- show the fov circle or not.

loadstring(game:HttpGet("https://raw.githubusercontent.com/zouyys/legit-v2-public/main/source/main.lua"))()
