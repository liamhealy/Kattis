import Control.Monad
import Data.Char

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> Int
parseInput = read . reverse

doTheWork :: Int -> String
doTheWork x = b
    where
        c = [1..x]
        b = wizardsSpell c
        

wizardsSpell :: [Int] -> String
wizardsSpell (x:[]) = (intToDigit x) ++ "Abracadabra"
wizardsSpell (x:xs) = (intToDigit x) ++ "Abracadabra" ++ "\n" ++ wizardsSpell (tail xs)

showResult :: String -> String
showResult = show
-- main :: IO()
-- main = do
--     a  <- readLn
--     xs <- [1..a]
--     mapM_ putStrLn xs
    
    -- a  <- readLn
    -- b  <- readLn
    -- let c = a + 1
    -- let d = b + 1
    -- xs <- [c..d]
    -- mapM_ putStrLn xs

    