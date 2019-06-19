main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> (String, Int)
parseInput = read

data Date = Date {month :: String, day :: Int}
    deriving (Eq, Show, Ord, Read)

type OCT = [String]

doTheWork :: (String, Int) -> String
doTheWork (x,y) = if x == "OCT" && y == 31 then "yup"
                            else "nope"

-- OCT :: [Char]
-- OCT == 
-- (Date m d) = if m == "OCT" && d == 31 then "yup"
--                            else "nope"

-- getDate :: Date -> String
-- getDate (Date m d) = show m

showResult :: String -> String
showResult = unwords . words