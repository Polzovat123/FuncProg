module Main where

import Lib

{-

1: 

main :: IO ()
main = do print $ ((7.03 ** (1 - ((4.92) ** 0.5)))/(3 * 4.92 + tan(7.03)))

2: 
functor l = (mod (maximum(l) - minimum(l)) 2) == 1
funicator l = l !! 3 <> minimum(l)
task_2 l
 | functor(l) && funicator(l) == True = True
 | otherwise = False

main :: IO ()
main = do print $ task_2([1, 2, 3, 4, 5])

3: 

task_1 = ((7.03 ** (1 - ((4.92) ** 0.5)))/(3 * 4.92 + tan(7.03))) 

task_3 :: (Float, Float) -> Float
task_3 (c1, c2) = ((c1 ** (1 - ((c2) ** 0.5)))/(3 * c2 + tan(c1)))

task_cheker :: (Float, Float) -> Float
task_cheker (c1, c2)
	| task_1 == task_3 (7.03, 4.92) = task_3(c1, c2)
	| otherwise = 500.0

main :: IO ()
main = do print(task_cheker(2.0, 6.0), task_cheker(3.0, 4.0))

4: 

task_4 = snd (3,5) : init [1,2,3,4,5] == [5,1,2,3,4] -- we push 5 in tail first list and check that it equals just list
main :: IO ()
main = do print task_4

5: 

justDoIt :: String -> Char -> Char -> String
justDoIt [] _ _ = []
justDoIt (x:xs) w will 
	    | x == w = (will: (justDoIt xs w will))
		| otherwise = (x: (justDoIt xs w will))

main :: IO ()
main = do print $ justDoIt "I stap" 'p' 'y'

6: 

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib x = fib(x - 2) + fib(x - 1)

fact :: Integer -> Integer
fact 0 = 1
fact 1 = 1
fact x = x * fact(x - 1)
	
fur n m = (fib (n + m + 1) ) + (min (fact 1)  (fact 9))

main :: IO ()
main = do 
	print (fur 3 4 )

-}
