main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [[Char]]
parseInput = map read . words

doTheWork :: [[Char]] -> String
doTheWork [x,xs,xss] = if compareInts xs xss == True then "Deletion failed"
                           else "Deletion succeeded" 

compareInts :: [Char] -> [Char] -> Bool
compareInts [] [] = False
compareInts xs ys = if head xs == head ys then True
                        else compareInts (tail xs) (tail ys)

showResult :: String -> String
showResult = unwords . words