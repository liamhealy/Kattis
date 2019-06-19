main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> Int
doTheWork (x:n:ps) = x + findLeftover (x:n:ps)

findLeftover :: [Int] -> Int
findLeftover [] = 0
findLeftover (x:n:[]) = x
findLeftover (x:n:ps) = x * n - sum(ps)

showResult :: Int -> String
showResult = show