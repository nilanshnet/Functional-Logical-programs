-- reverse the list using recurssion

rev :: [a] -> [a]
rev list = revHelper list []

-- helper function that appends into a blank list
revHelper :: [a] -> [a] -> [a]
revHelper [] a = a
revHelper (x:xs) a = revHelper xs (x:a)

-- main 
main = do {
        print(rev [1,2,3,4]);
    }



