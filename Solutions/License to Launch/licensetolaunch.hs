import Data.List
import Data.Maybe

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> Int
doTheWork (x:xs) = j
    where
        i = foldr1 min xs
        j = head (elemIndices i xs)

showResult :: Int -> String
showResult = show