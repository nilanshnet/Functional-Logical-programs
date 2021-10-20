-- submitted by Nilansh Netan (nn2094) ---
--- two lists input and return list with combination tuples for every list element

lisToTuple :: [a] -> [b] -> [(a,b)]
lisToTuple [] _ = []
lisToTuple _ [] = []

lisToTuple (x:xs) (y:ys) = [(x, y)] ++ secondListiter (toList x) ys ++ lisToTuple xs (y:ys)

secondListiter :: [a] -> [b] -> [(a,b)]
secondListiter [] _ = []
secondListiter _ [] = []

secondListiter (x:xs) ys = [( x, (head ys))] ++ secondListiter (toList x) (tail ys)

toList :: a -> [a]
toList a = [a]

--- please add the main method for testing, I did it online IDE  ---