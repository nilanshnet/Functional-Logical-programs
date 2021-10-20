--- find the maximum number in a given list -----

maxofList :: Integral a => [a] -> a 
maxofList [] = error "no values in the list"
maxofList [x] = x 
maxofList (x:xs) = helper xs x


helper :: Integral a => [a] -> a -> a 
helper [] currentmax = currentmax
helper (x:xs) currentmax = 
  if (x > currentmax)
   then helper xs x 
  else 
    helper xs currentmax   

main = do{
          print(maxofList [1,2,3,4,5,6,76,86]);
        }
