prod :: [Int] -> Int
prod [] = 1
prod (x:xs) = x * prod xs

main :: IO ()
main = do
    print(prod [1, 4, 50])