import Data.List

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . lines

doTheWork :: [Int] -> Int
doTheWork (x:xs:xss) = if checkTime (xs:xss) > xs then w
                           else checkTime (xs:xss)
                               where
                                   z = length xss
                                   y = dropWhile (< z) xss
                                   w = doTheWork (x:xs:y)

checkTime :: [Int] -> Int
checkTime (x:xs) = sum xs

showResult :: Int -> String
showResult = show