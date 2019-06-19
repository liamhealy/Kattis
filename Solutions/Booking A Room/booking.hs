import Data.List

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> String
doTheWork (x:y:ys) = if x == l then "too late"
                         else show z
                         where
                             l = length ys
                             ns = [1..x]
                             z = checkList ns ys

checkList :: [Int] -> [Int] -> Int
checkList (x:xs) [] = x
checkList (x:xs) (y:ys) = if x `elem` (y:ys) then checkList xs (y:ys)
                              else x

showResult :: String -> String
showResult = unwords . words