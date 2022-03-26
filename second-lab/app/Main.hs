
module Main where
import Lib

import Data.Char
import Data.List
import Debug.Trace
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

4:

main = do
	print (union a (b \\  (u \\ c)))
	where
		u = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		a = [1, 3, 5, 7, 9]
		b = [1, 2, 3, 4, 5]
		c = [3, 6, 8]

5:

getInfo [] _ _ = error "empty row"
getInfo row p1 p2 
	| ((length row) > p2) && (p1 > -1) && not((row!!p1)=='0')= read((row!!p1):[(row!!p2)]) :: Integer
	| ((length row) > p2) && (p1 > -1) = read([row!!p2]) :: Integer
	| otherwise = error "we go outside data"

filterInput p1 p2 c1 c2 msg  
	| ((val <= c1) && (val >= c2)) = val
	| otherwise = error "fail to do"
	where 
		val = (getInfo msg p1 p2)
 
hour = filterInput 0 1 24 0
minute = filterInput 3 4 60 0

calc_time_way (h1, m1) (h2, m2) 
	| m2 < m1 = (h2-h1-1, 60+m2-m1)
	| m2 >= m1 = (h2-h1, m2-m1)

get_time_way ms1 ms2
	| (h2 > h1) = calc_time_way (h1, m1) (h2, m2)
	| (h2 == h1) && (m2 >= m1) = calc_time_way (h1, m1) (h2, m2)
	| otherwise = error "first time bigger than second!" 
	where
		(h1, m1) = ((hour ms1), (minute ms1))
		(h2, m2) = ((hour ms2), (minute ms2))

main = do
	msg1 <- getLine
	msg2 <- getLine
	print (get_time_way msg1 msg2)


6: 

convTwoDecade [] = 0
convTwoDecade (x:xs)
	| x == '1' = (2 ^ ((length (x:xs)) - 1)) + (convTwoDecade xs)
	| otherwise = 0  + (convTwoDecade xs)

convRomanDecade :: String -> Int
convRomanDecade [] = 0
convRomanDecade (x:[]) = rome x
convRomanDecade (x:xs)
	| (rome x) >=  (rome (head xs)) = trace ("bigger x: " ++ show x) $ (rome x) + (convRomanDecade xs)
	| otherwise = trace ("less x: " ++ show x) $ (convRomanDecade xs) - (rome x)

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
	print (convRomanDecade x)
	print $ convTwoDecade y
	print ((convRomanDecade x) + (convTwoDecade y))

-}


