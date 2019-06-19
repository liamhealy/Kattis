main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Integer]
parseInput = map read . words

doTheWork :: [Integer] -> Integer
-- doTheWork (x:[]) = "no hiss"
doTheWork [x,y] = x + y


showResult :: Integer -> String
showResult = show