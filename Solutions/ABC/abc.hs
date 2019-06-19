-- Haskell solution for the 'ABC' Kattis problem
import Data.List
import Data.Char

type Orders = ([Int],[Char])

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> Orders
parseInput = map read . lines
-- make a pair out of the list of nums and the list of chars
    -- where
    --     inputLines = lines s
    --     nums = parseFirstLine (head inputLines)
    --     parseFirstLine l = undefined -- TODO define this

-- parseInput should break the input into lines and then call its helper functions
-- first helper is parseFirstLine, which breaks the line into words and then converts them to ints
-- second helper is parseSecondLine, which takes the remaining lines and just returns the second one (which is already a list of characters like we want)
-- probably simplest to use a where clause to call each function and name its result

doTheWork :: ([Int],[Char]) -> [Int]
doTheWork ([a,b,c],[d,e,f]) = checkA (sort [a,b,c]) d e f
-- [x1,y1,x2,y2,x3,y3]
checkA :: [Int] -> Char -> Char -> Char -> [Int]
checkA [a,b,c] d e f = if d == 'A' && e == 'B' && f == 'C' then [a,b,c]
                           else if d == 'A' && e == 'C' && f == 'B' then [a,c,b]
                               else if d == 'B' && e == 'A' && f == 'C' then [b,a,c]
                                   else if d == 'B' && e == 'C' && f == 'A' then [b,c,a]
                                       else if d == 'C' && e == 'A' && f == 'B' then [c,a,b]
                                           else [c,b,a]

showResult :: [Int] -> String
showResult = unwords . map show