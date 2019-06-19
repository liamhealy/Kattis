-- Roaming Romans Kattis problem
main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> Float
parseInput = read

doTheWork :: Float -> Int
doTheWork x = round (x * (1000 * (5280 / 4854)))

showResult :: Int -> String
showResult = show