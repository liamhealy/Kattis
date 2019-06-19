main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> Int
doTheWork [b,br,bs,a,as] = ar
    where
        bsavings = bs * (br - b)
        asavings = bsavings `div` as
        ar = a + asavings + 1

showResult :: Int -> String
showResult = show