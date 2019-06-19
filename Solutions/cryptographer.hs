main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> String
parseInput = read

-- Check here to see if x (Jon's 'aaah') is longer than xs (doctor's 'aaah')
doTheWork :: String -> Int
doTheWork x = l `div` 3 + 1
    where 
        l = length x

showResult :: Int -> String
showResult = show