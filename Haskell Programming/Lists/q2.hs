myHead :: [Int] -> Int
myHead [] = error " Empty list has no head"
myHead (x:_) = x

myLast :: [Int] -> Int
myLast [] = error " Empty list has no last"
myLast [x] = x 
myLast (_:xs) = myLast xs

startEnd::[Int]->(Int,Int)
startEnd [] = error "Empty list has no first or last element"
startEnd (x:xs) = (myHead (x:xs) , myLast (x:xs))


main ::IO ()
main = do
    print(startEnd [7, 5, 9, 6, 3])

