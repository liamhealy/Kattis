main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> Float
parseInput = read

-- Solution must be 0.36788 <= N <= 2.718281 
doTheWork :: Float -> Float
doTheWork n = n**(1 / n) -- (10**(5) * (10.0^^(-5)))

showResult :: Float -> String
showResult = show