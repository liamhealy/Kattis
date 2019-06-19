main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . lines

doTheWork :: [Int] -> String
doTheWork (h:w:n:_) = 

findValue :: [String] -> Int
findValue (x:ys)= if x == "A" then 11
                      else if x == "K" then 4
                          else if x == "Q" then 3
                              else if x == "T" then 10
                                  else 0

showResult :: Int -> String
showResult = show