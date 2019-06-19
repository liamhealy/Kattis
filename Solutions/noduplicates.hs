import Data.Char
import Data.List

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [[String]]
parseInput = map read . 

doTheWork :: [[String]] -> String
doTheWork (x:xs) = if d == False then "yes"
                       else "no"
    where
        d = checkDups (x:xs)

checkDups :: [[String]] -> Bool
checkDups (x:[]) = False
checkDups (x:xs) = if x `elem` xs then True 
                       else checkDups xs

showResult :: String -> String
showResult = unwords . words