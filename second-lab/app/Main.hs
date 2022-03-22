
module Main where
import Lib

import Data.Char

{-
1: 

find [] _ = -1
find _ [] = 1
find (h:big) (wk:small)
	| h == wk = (find big small)
	| otherwise = find big (wk:small)

checkTwoEqual x
	| (find x "==") == -1 = True
	| otherwise = False

checkLastBig x = ((last x) >= 'A') && ((last x) <= 'Z')

main :: IO ()
main = do
	pasw <- getLine
	if (checkTwoEqual pasw) && (checkLastBig pasw) 
		then print $ "Password has been acepted."
	else print $ "Password hasn't been acepted"

2:

ceaser :: Int -> Char -> Char
ceaser step c = chr ((ord c) + step)
myVar = ceaser 8
myVaR = ceaser (- 8)

encode [] = []
encode (x:xs) = (myVar x) : (encode xs)

decode [] = []
decode (x:xs) = (myVaR x) : (decode xs)

main = do
	mesg <- getLine
	print (encode mesg)
	print "Reverse back"
	print (decode (encode mesg))

3:

convTwoDecade [] = 0
convTwoDecade (x:xs)
	| x == '1' = (2 ^ ((length (x:xs)) - 1)) + (convTwoDecade xs)
	| otherwise = 0  + (convTwoDecade xs)

convRomanDecade :: String -> Int
convRomanDecade [] = 0
convRomanDecade (x:[]) = rome x
convRomanDecade (x:xs)
	| (rome x) >= (rome (head xs)) = (rome x) + (convRomanDecade xs)
	| otherwise = (convRomanDecade xs) - (rome x)

rome :: Char -> Int
rome 'I' = 1
rome 'V' = 5
rome 'X' = 10
rome 'L' = 50
rome 'C' = 100
rome 'D' = 500
rome 'M' = 1000
rome x = 500

main = do
	x <- getLine
	y <- getLine
	print $ convRomanDecade x
	print $ convTwoDecade y
	print ((convRomanDecade x) + (convTwoDecade y))
-}
