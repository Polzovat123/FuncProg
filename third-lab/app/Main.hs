module Main where

import Lib
import  Data.Char
import Data.List
{-
1:

main :: IO ()
main = do
	msg <- getLine
	let input1 = (read msg) :: [(Int, Int)]
	print (head input1)
	print ((any (\(x,y)->x==y) input1) && (all (\(x,y)->(mod y 2)==1) input1))

2:
clear::Int->Int->String->String
clear _ _ [] = []
clear counter finish (h:text)
	| counter >= finish = h:(clear (counter+1) finish text)
	| otherwise = clear (counter+1) finish text

lower [] = []
lower (h:t) = (toLower h) : (lower t)

main :: IO()
main = do
	input <- getLine
	k_inp <- getLine
	let k = read k_inp :: Int
	let arr = read input :: [String]
	print k
	print (map (clear 0 k) arr)
	let pre = (map (clear 0 k) arr)
	print "Point B"
	print (map lower pre)

3:

-- input:
-- [('f','d'), ('b','d'), ('d','d'), ('c','b'), ('f','c')]


merge [] ys = ys
merge (x:xs) ys = x:merge ys xs

all_combine _ [] = []
all_combine (x, y) ((x2, f):t)
	| y == x2 = (x, f):(all_combine (x, y) t)
	| otherwise = (all_combine (x, y) t)

rmdup xs = nubBy cmpKeyAndVal xs 
  where
    cmpKeyAndVal (x, y) (x', y') = x == x' && y == y'

multip [] _ = []
multip _ [] = []
multip (h1:t1) p2 = rmdup(merge (all_combine h1 p2) (multip t1 p2))

pere::Char->[Char]->[(Char, Char)]
pere _ [] = []
pere s (x:xs) = (s, x):(pere s xs)

mp::[Char]->[Char]->[(Char, Char)]
mp _ [] = []
mp [] _ = []
mp (h1:t1) l = rmdup(merge (pere h1 l) (mp t1 l)) 


np1:: [(Char, Char)]->[Char]
np1 tt =  nubBy (==) (fst l)	
	where 
		l = unzip tt
np2:: [(Char, Char)]->[Char]
np2 tt =  nubBy (==) (snd t)
	where 
		t = unzip tt


main::IO()
main = do
	msg <- getLine
	let p = read msg :: [(Char, Char)]
	print (head p)
	let p_o = map (\(x,y) -> (y,x)) p
	print (p_o)
	print ("P * P = ")
	print (multip p p)
	print ("P-1 * P = ")
	print (multip p_o p)
	print ("np1(P-1 * P)")
	print (np1 (multip p_o p))
	let f1 = (np1 (multip p_o p))
	let f2 = (np2 (multip p p))
	print (mp  f1 f2) 


4:

-}


p1 (х,у) = ((x+y) mod 2) == 0 
p2 (х,у) = x > y
p3 (х,у) = (x mod 4) == (y mod 4) 
p4 (х,у) = (x + (2 * y)) < 8
p5 (х,у) = ((max x y) mod 2) == 1

main = do