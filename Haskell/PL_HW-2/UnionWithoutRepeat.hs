-- --- union function for two lists ------
-- - assuming all of the elements in a list are unique ----
-- - but two lists might have repeating numbers ----
--  --  those numbers not to be repeated in union output ----

unionreturn :: (Eq a) => [a] -> [a] -> [a]
unionreturn [] [] = []
-- cases for when one of the lists is empty
unionreturn [] (x:xs) = singlelist (x:xs) 
unionreturn (x:xs) [] = singlelist (x:xs)
unionreturn (x:xs)(y:ys) = singlelist (x:xs ++ (y:ys))  

singlelist :: (Eq a) => [a] -> [a]
singlelist [] = []
singlelist (x:xs) =
  if (member x (xs)) 
    then singlelist xs
  else 
    x: singlelist xs

-- checking for duplicates too
member :: (Eq a) => a -> [a] -> Bool
member x [] = False
member x (y:ys) | x==y = True 
                | otherwise = member x ys

main = do {
      print(unionreturn [1,2,3,4] [4,5,6,76,86]);
      print(unionreturn [1,2,3,4] [2,3,4,5,6]);
      print(unionreturn [1,2] []);
      print(unionreturn [] [4,6]);
      }