main :: IO ()
main = interact (showResult . doTheWork . parseInput)

-- A card is made up of a face value, suit and overall value
-- type Card = [(Char, Char)]
-- type Card = [Char, Char, Int]
-- A hand is made up of four cards
-- type Hand = [Card]

parseInput :: String -> [[String]]
parseInput = map read . lines

doTheWork :: [[String]] -> [Int] -> Int
doTheWork (x:[]) [] = 0
doTheWork (x:xs) (ys) = if tail xs /= [] then (findValue (head xs) ++ [ys]) sum (ys) 
                            else sum (ys)

findValue :: [String] -> Int
findValue (x:ys)= if x == "A" then 11
                      else if x == "K" then 4
                          else if x == "Q" then 3
                              else if x == "T" then 10
                                  else 0
-- findValue :: Card -> Card -> Int
-- findValue (a:b) (x:[]) = 0
-- findValue (a:b) (x:y) = if x = 'A' then 

showResult :: Int -> String
showResult = show