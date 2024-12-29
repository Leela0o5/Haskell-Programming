getCount :: Int -> [Int] -> Int
getCount _ [] = 0
getCount y (x:xs)
 | y == x = 1 + getCount y xs
 | otherwise = getCount y xs

findOddOccur :: [Int] -> Int
findOddOccur [] = error "No element occurs an odd number of times"
findOddOccur (x:xs) = do
    let count  = getCount x (x:xs)
    if (mod count 2) == 1
    then x
    else findOddOccur xs

main :: IO ()
main = do
    putStr "Enter list:"
    input<-getLine
    let l = map read (words input)
    print(findOddOccur l)


