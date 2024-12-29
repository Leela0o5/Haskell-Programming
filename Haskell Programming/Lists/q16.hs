searchNum :: [Int] -> Int -> Bool

searchNum [] _ = False
searchNum (x:xs) n = if n == x then True else searchNum xs n

main :: IO ()
main = do
    print(searchNum [1,8,3,8,7] 10)