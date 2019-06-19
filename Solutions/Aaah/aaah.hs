-- https://open.kattis.com/problems/aaah
-- Work in progress...

import Data.Char

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [String]
parseInput = lines

-- Check here to see if x (Jon's 'aaah') is longer than xs (doctor's 'aaah')
doTheWork :: [String] -> String
doTheWork (x:xs) = if null (head xs) then "go"
                       else if length x >= length (head xs) then "go"
                           else if length (head xs) >= length x then "no"
                               else "no"

showResult :: String -> String
showResult = unwords . lines

-- Attempt # 2
-- -- https://open.kattis.com/problems/aaah
-- -- Work in progress...

-- import Data.Char

-- main :: IO ()
-- main = interact (showResult . doTheWork . parseInput)

-- parseInput :: String -> [String]
-- parseInput = lines

-- -- Check here to see if x (Jon's 'aaah') is longer than xs (doctor's 'aaah')
-- doTheWork :: [String] -> String
-- doTheWork (x:xs) = if length x > 0 then isJonValid (x:xs)
--                        else "no"

-- isJonValid :: [String] -> String
-- isJonValid (x:xs) = if length x >= 999 then "invalid"
--                         else if head x == "h" then isDocValid (x:xs)
--                             else isJonValid (tail x:xs)

-- isDocValid :: [String] -> String
-- isDocValid (x:xs) = if length xs >= 999 then "invalid"
--                         else if head xs == "h" then matchDoctor (x:xs)
--                             else isDocValid (x:tail xs)

-- matchDoctor :: [String] -> String
-- matchDoctor (x:xs) = if length x >= length xs then "go"
--                          else "no"

-- showResult :: String -> String
-- showResult = show

-- Attempt # 3
-- -- https://open.kattis.com/problems/aaah
-- -- Work in progress...

-- import Data.Char

-- main :: IO ()
-- main = interact (showResult . doTheWork . parseInput)

-- parseInput :: String -> [String]
-- parseInput = lines

-- -- Check here to see if x (Jon's 'aaah') is longer than xs (doctor's 'aaah')
-- doTheWork :: [String] -> String
-- doTheWork (x:[]) = "no"
-- doTheWork (x:xs)  = if x `elem` [0..999] && xs `elem` [0..999] then matchDoctor (x:xs)
--                         else "no"

-- isIn :: Eq a => a -> [a] -> Bool
-- isIn 'h' ys = if null ys then False
--                   else if head ys == 'h' then True
--                       else isIn 'h' (tail ys)

-- matchDoctor :: [String] -> String
-- matchDoctor (x:xs) =

-- showResult :: String -> String
-- showResult = show