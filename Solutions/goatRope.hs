main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Double]
parseInput = map read . words

doTheWork :: [Double] -> Double
doTheWork [x,y,x1,y1,x2,y2] = sqrt(dx * dx + dy * dy)
	where
		xc = (x1 + x2) / 2
		yc = (y1 + y2) / 2
		width = x2 - x1
		height = y2 - y1
		dx = max(abs(x - xc) - width / 2) 0
		dy = max(abs(y - yc) - height / 2) 0

showResult :: Double -> String
showResult = show