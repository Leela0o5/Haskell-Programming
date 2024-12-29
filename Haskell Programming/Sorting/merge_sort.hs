myTake :: Int -> [Int] -> [Int]
myTake 0 _ = []
myTake _ [] = []
myTake n (x:xs) = x:myTake (n-1) xs


mydrop :: Int -> [Int] -> [Int]
mydrop 0 (x:xs) = (x:xs)
mydrop _ [] = []
mydrop n (_:xs) = mydrop (n-1) xs
 
mylength :: [Int] -> Int
mylength [] = 0
mylength [_] = 1
mylength (x:xs) = 1 + mylength xs

merge :: [Int] -> [Int] -> [Int]
merge [] [] = []
merge l [] = l
merge [] l = l
merge (x:xs) (y:ys)
 | x < y = x : merge xs (y:ys)
 | otherwise = y : merge (x:xs) ys

mergeSort :: [Int]  -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort l = merge (mergeSort (myTake (mylength l `div` 2) l)) (mergeSort (mydrop (mylength l `div` 2) l))

main :: IO ()
main = do
 print(mergeSort [1, 9, 0, 3, 2,3,6])