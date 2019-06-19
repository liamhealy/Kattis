main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Double]
parseInput = map read . words

doTheWork :: [Double] -> String
doTheWork [a1,a2,a3,a4,b1,b2,b3,b4] = if a1 + a2 + a3 + a4 == b1 + b2 + b3 + b4 then "Tie"
                                          else if a1 + a2 + a3 + a4 > b1 + b2 + b3 + b4 then "Gunnar"
                                               else "Emma"
    
    -- checkDie x y
    --                                           where
    --                                               x = (a1 + a2 + a3 + a4)
    --                                               y = (b1 + b2 + b3 + b4)
    
    -- if a1 + a2 + a3 + a4 == b1 + b2 + b3 + b4 then "Tie"
    --                                       else if a1 + a2 + a3 + a4 > b1 + b2 + b3 + b4 then "Gunnar"
    --                                           else "Emma"

-- checkDie :: Double -> Double -> String
-- checkDie x y = if x > y then "Gunnar"
--                        else if x == y then "Tie"
--                            else "Emma"

-- checkDie :: Int -> Int -> Int -> Int -> Int
-- checkDie x1 x2 x3 x4 = x1 + x2 + x3 + x4

-- checkEmma :: Int -> Int -> Int -> Int -> Int
-- checkEmma y1 y2 y3 y4 = y1 + y2 + y3 + y4

showResult :: String -> String
showResult = unwords . words