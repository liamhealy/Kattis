import Data.List

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> Int
doTheWork [a,b,c] = checkList xs
    where
        xs = sort [a,b,c]

checkList :: [Int] -> Int
checkList (x:y:z:_) = if d1 > d2 then y + d2
                          else if d2 > d1 then y - d1
                              else z + d1
    where
        d1 = z - y
        d2 = y - x

showResult :: Int -> String
showResult = show