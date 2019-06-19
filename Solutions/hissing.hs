import Data.Char

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> String
parseInput = map read . words

doTheWork :: String -> String
-- doTheWork (x:[]) = "no hiss"
doTheWork (x:[]) = "no hiss"
doTheWork (x:xs) = if x == 's' && head xs == 's' then "hiss"
                       else doTheWork (xs)
                    --    where
                    --        h = "hiss"

showResult :: String -> String
showResult = unwords . words