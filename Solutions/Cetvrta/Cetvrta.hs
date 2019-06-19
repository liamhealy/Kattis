main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> [Int]
doTheWork (x1:y1:x2:y2:x3:y3:_) = [(checkX x1 x2 x3),(checkY y1 y2 y3)]
-- [x1,y1,x2,y2,x3,y3]
checkX :: Int -> Int -> Int -> Int
checkX x1 x2 x3 = if x1 == x2 then x3
                        else if x2 == x3 then x1
                            else x2

checkY :: Int -> Int -> Int -> Int
checkY y1 y2 y3 = if y1 == y2 then y3
                        else if y2 == y3 then y1
                            else y2

showResult :: [Int] -> String
showResult = unwords . map show
