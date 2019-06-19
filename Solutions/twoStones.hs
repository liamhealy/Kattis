main :: IO()
main = interact (showResult . doesAliceWin . parseInput)

parseInput :: String -> Int
parseInput = read

doesAliceWin :: Int -> Bool
--doesAliceWin n = n `mod` 2 == 1 then True else False
doesAliceWin n = n `mod` 2 == 1

showResult :: Bool -> String
showResult aliceWon = if aliceWon then "Alice" else "Bob"