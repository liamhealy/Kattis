main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Float]
parseInput = map read . words

doTheWork :: [Float] -> String
doTheWork [a,n] = if sqrt(n) > a then "Diablo is happy"
                      else "Need more materials!"

showResult :: String -> String
showResult = unwords . words