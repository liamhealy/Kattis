main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> Int
doTheWork [a,b,c] = if x > y then x
                        else y
                            where
                                x = c - b - 1
                                y = b - a - 1

showResult :: Int -> String
showResult = show