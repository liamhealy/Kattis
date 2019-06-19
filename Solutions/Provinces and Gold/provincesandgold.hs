import Data.Char

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> String
doTheWork [g,s,c] = (checkVictoryPower power) ++ (checkTreasurePower power)
    where
        x = g * 3
        y = s * 2
        z = c * 1
        power = x + y + z

checkVictoryPower :: Int -> String
checkVictoryPower x = if x >= 8 then "Province or "
                          else if x >= 5 then "Duchy or "
                              else if x >= 2 then "Estate or "
                                  else ""

checkTreasurePower :: Int -> String
checkTreasurePower x = if x >= 6 then "Gold"
                          else if x >= 3 then "Silver"
                              else "Copper"

showResult :: String -> String
showResult = unwords . words