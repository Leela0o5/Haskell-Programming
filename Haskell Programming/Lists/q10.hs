getCount :: [Int] -> Int -> Int
getCount [] _ = 0
getCount (x:xs) n = if n == x 
    then 1 + getCount xs n
    else getCount xs n

myHead :: [Int] -> Int
myHead [] = error "Empty list do not have a head"
myHead (x:_) = x

myTail :: [Int] -> [Int]
myTail [] = error "Empty list do not have a tail"
myTail (_:xs) =xs

findDuplicates :: [Int] -> [Int] -> [Int]
findDuplicates [] res = res
findDuplicates (x:xs) res = do
    let count = getCount (x:xs) x
    if count > 1 && ((x `elem` res) == False)
        then findDuplicates xs (x:res)
        else findDuplicates xs res

main :: IO ()
main = do
    putStr "Enter list:"
    ll<-getLine
    let l = map read (words ll)
    let myresult = []
    print(findDuplicates l myresult)
