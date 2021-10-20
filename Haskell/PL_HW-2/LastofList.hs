-----  Write a program that returns 
-----  the final element of a list

lastoflist :: Integral a => [a] -> a
lastoflist [] = error "Empty list dude"
lastoflist [x] = x
lastoflist (x:xs) = lastoflist xs

main = do{
          print("first output: ");
          print(lastoflist [1,2,3,4,5,6]);
          print("second output: ");
          print(lastoflist [1]);
        }