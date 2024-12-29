myHead :: [Int] -> Int
myHead []  = error "Empty list don't have a head"
myHead (x:_)  = x
 
myTail :: [Int] -> Int
myTail [] = error "Empty list don't have a tail"
myTail [x] = x
myTail (_:xs) = myTail xs

myConcat :: [Int] -> [Int] -> [Int]
myConcat [] ys = ys
myConcat (x:xs) ys = x : myConcat xs ys

main :: IO ()
main = do 
    print(myConcat [1, 5, 8] [1, 9, 10])
