main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> Double
parseInput = read

doTheWork :: Double -> Double
doTheWork a = sqrt( a ) * 4


showResult :: Double -> String
showResult = show