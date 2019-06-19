import Data.Char

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> Int
parseInput = read

doTheWork :: Int -> Int
doTheWork x = if x > 2 then x - 2
                  else 1

showResult :: Int -> String
showResult = show