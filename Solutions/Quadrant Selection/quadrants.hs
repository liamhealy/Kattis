main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Char]
parseInput = map read . words

doTheWork :: [Char] -> String
doTheWork [a,b] = if a > 0 && b > 0 then 1
                        else if a > 0 && b < 0 then 4
                            else if a < 0 && b > 0 then 2
                                else 3

showResult :: Int -> String
showResult = show