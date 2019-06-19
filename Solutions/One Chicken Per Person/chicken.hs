main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> String
doTheWork [x, y] = if y - x < -1 then "Dr. Chaz needs " ++ z ++ " more pieces of chicken!"
                       else if y - x < 0 then "Dr. Chaz needs " ++ z ++ " more piece of chicken!"
                           else if y - x == 1 then "Dr. Chaz will have " ++ a ++ " piece of chicken left over!"
                               else "Dr. Chaz will have " ++ a ++ " pieces of chicken left over!"
                                   where
                                       b = x - y
                                       c = y - x
                                       z = show b
                                       a = show c
showResult :: String -> String
showResult = unwords . words
