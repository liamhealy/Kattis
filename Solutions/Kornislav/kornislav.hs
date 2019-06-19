import Data.List

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> Int
doTheWork [a,b,c,d] = calculateSteps (sort [a,b,c,d])

calculateSteps :: [Int] -> Int
calculateSteps [a,b,c,d] = a * c

showResult :: Int -> String
showResult = show