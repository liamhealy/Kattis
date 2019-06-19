main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> String
doTheWork (x:y) = checkShapes x (head y)

checkShapes :: Int -> Int -> String
checkShapes a b = if even b then "possible"
                      else "impossible"
--     if (odd a || a == 0) && (even b || b == 0) then "possible" 
--                       else if a == 0 && b == 0 then "impossible" 
--                           else "impossible"

-- [x1,y1,x2,y2,x3,y3]
-- checkX :: Int -> Int -> Int -> Int
-- checkX x1 x2 x3 = if x1 == x2 then x3
--                         else if x2 == x3 then x1
--                             else x2

-- checkY :: Int -> Int -> Int -> Int
-- checkY y1 y2 y3 = if y1 == y2 then y3
--                         else if y2 == y3 then y1
--                             else y2

showResult :: String -> String
showResult = unwords . words