main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [[Int]]
parseInput = map read . lines

doTheWork :: [[Int]] -> [String]
doTheWork [[a,b,c,d],[p,m,g]] = [(checkArrival [a,b,c,d,p]),(checkArrival [a,b,c,d,m]),(checkArrival [a,b,c,d,g])]
                                where
                                    output = ""
                                    dogOneA = a
                                    dogOneB = b
                                    dogTwoA = c
                                    dogTwoB = d
                                    postman = p
                                    milkman = m
                                    garbage = g
    -- if a >= p && c >= p then "both":output
    --                             else if (a >= p && c < p) || (a < p && c >= p) then "one":output
    --                                 else if a >= m && c >= m then "both":output
    --                                     else if (a >= m && c < m) || (a < m && c >= m) then "one":output
    --                                     else "none":output 
    --                             where
    --                                 -- dogOneA = a
    --                                 -- dogOneB = b
    --                                 -- dogTwoA = c
    --                                 -- dogTwoB = d
    --                                 -- postman = p
    --                                 -- milkman = m
    --                                 -- garbage = g
    --                                 output = []

checkArrival :: [Int] -> String
checkArrival [a,b,c,d,e] = if a >= e && c >= e then x
                               else if (a >= e && c < e) || (a < e && c >= e) then y
                                   else z
                                   where 
                                       x = "both"
                                       y = "one"
                                       z = "none"
showResult :: [String] -> String
showResult = show