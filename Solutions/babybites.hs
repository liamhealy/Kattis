import Data.Char

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . lines

doTheWork :: [Int] -> String
doTheWork (x:xs) = if length xs == length ys then "makes sense"
                       else "something is fishy"
                           where
                               ys = returnInt x

mumble :: Int
mumble = 0

-- patchCode :: Int -> Int
-- patchCode x = if x == 0 then x = 

returnInt :: Int -> [Int]
returnInt x = [1..x]

showResult :: String -> String
showResult = show