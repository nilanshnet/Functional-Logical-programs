-- Write a program that succeeds if the intersection 
-- of two given list parameters is empty

-- intersection : when there are same elements in lists

intersfunc :: Eq a => [a] -> [a] -> Bool
intersfunc [] [] = error "empty lists"
intersfunc [] (x:xs) = True 
intersfunc (x:xs) [] = True
intersfunc (x:xs)(y:ys) =
    if (helper (x:xs) (y:ys) == []) 
        then True       
    else
        False           

-- trying to use indirect recursion here in the below two functions 

helper :: Eq a => [a] -> [a] -> [a]
helper _ [] = []
helper [] _ = []
helper (x:xs) (y:ys) = 
        if (x == y) 
            then [x] 
        else 
            secondhelper (toList x) ys ++ helper xs (y:ys)


secondhelper :: Eq a => [a] -> [a] -> [a]    
secondhelper _ [] = []    
secondhelper [] _ = []    
secondhelper (x:xs) (y:ys) =     
        if (x == y) 
            then [x] 
        else
            secondhelper (toList x) ys


-- convert one integer to a list with one integer
toList :: a -> [a]
toList a = [a]


main = do {
        putStrLn ("Incase of empty first list: ");
        print(intersfunc [] [2]); 
        putStrLn ("Incase of intersection in lists: ");
        print(intersfunc [4,2] [1,2]);
        putStrLn ("Incase of NO intersection in lists: ");  
        print(intersfunc [4,6] []);
        putStrLn ("Incase of empty second list: ");  
        print(intersfunc [4,6] []);
        --putStrLn ("Incase of both empty lists: ");  
        --print(intersfunc [] []);
      }