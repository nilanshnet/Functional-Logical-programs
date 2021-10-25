-- --- union function for two lists ------
-- - assuming all of the elements are unique ----
-- - and there is no problem with repeating numbers ----

unionreturn :: [a] -> [a] -> [a]
unionreturn [] [] = error "empty lists"

-- cases for when one of the lists is empty
unionreturn [] (x:xs) = singlelist (x:xs) 
unionreturn (x:xs) [] = singlelist (x:xs)
unionreturn (x:xs)(y:ys) = [ x ] ++ singlelist xs ++ [ y ] ++ singlelist ys

singlelist :: [a] -> [a]
singlelist [] = []
singlelist (x:xs) = [] ++ [ x ] ++ singlelist xs

--- driver code for the program -- 
--main = do {
--        print(unionreturn [1,2,3,4] [5,6,76,86]);
--        print(unionreturn [1,2] []);
--        print(unionreturn [] [4,6]);
--      }