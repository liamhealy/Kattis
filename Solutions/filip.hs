main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = read . reverse

doTheWork :: [Int] -> Int
doTheWork [x, y] = if f > s then f
                      else s
                      where
                          f = reverseNumber x
                          s = reverseNumber y

reverseNumber :: Int -> Int
reverseNumber = read . reverse . show

showResult :: Int -> String
showResult = show