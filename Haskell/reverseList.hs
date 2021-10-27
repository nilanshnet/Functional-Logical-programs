-- reverse the list using tail recurssion

-- helper function that appends into a blank list
revHelper [a] -> [a] -> [a]
revHelper [] a = a
revHelper (x:xs) a = revHelper xs (x:a)
