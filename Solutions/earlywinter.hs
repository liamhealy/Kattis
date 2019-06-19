import Data.Char

main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> String
-- doTheWork (x:[]) = "no hiss"
doTheWork (n:d:ys) = if ysss /= n then "It hadn't snowed this early in " ++ show ysss ++ " years!"
                         else "It had never snowed this early!"
                             where
                                 yss = checkYears d (ys)
                                 ysss = length yss
                                 -- years = intToDigit yss

checkYears :: Int -> [Int] -> [Int]
checkYears d (y:[]) = if d >= y then y:[]
                          else []
checkYears d (y:ys) = if d >= y then take (length (tail ys)) ys
                          else checkYears d ys


showResult :: String -> String
showResult = unwords . words