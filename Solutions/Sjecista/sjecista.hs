main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> Int
parseInput = read

-- Read in 'n', which is the number of vertices
-- in the example, 6 vertices gave 15 intersections,
-- some had 3 intersec., some had 4...
-- Minimum number of vertices is 3
-- I don't know if int will work
doTheWork :: Int -> Int
doTheWork n = (n * (n - 1) * (n - 2) * (n - 3)) `div` 24

showResult :: Int -> String
showResult = show