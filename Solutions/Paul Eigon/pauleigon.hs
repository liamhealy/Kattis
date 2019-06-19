main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> String
doTheWork [n,p,q] = if odd x then "opponent"
                        else "paul"
                            where
                                x = (p + q) `quot` n

showResult :: String -> String
showResult = unwords . words