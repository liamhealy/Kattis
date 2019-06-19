main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . lines

doTheWork :: [Int] -> Int
doTheWork (x:_) = y
doTheWork (x:xs) = if x == head xs then y - 1
                       else doTheWork xs
                   where
                       y = length (x:xs)

showResult :: Int -> String
showResult = show