sumEven :: [Int] -> Int
sumEven [] = 0
sumEven (x:xs) 
 | x `mod` 2 == 0 = x + sumEven xs
 |otherwise = sumEven xs

main :: IO ()
main = do 
    print(sumEven [1,2,8,1])