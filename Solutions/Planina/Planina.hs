main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> Int
doTheWork (x:_) = (2^x + 1)^2

showResult :: Int -> String
showResult = show