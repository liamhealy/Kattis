main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> Int
parseInput = read

doTheWork :: Int -> Double
-- doTheWork (x:[]) = "no hiss"
doTheWork x = x / y
    where
        y = factorial [1..x]

buildList :: Double -> Double
buildList x = factorial [1..x]

factorial :: [Double] -> Double
factorial xs = product xs

showResult :: Double -> String
showResult = show