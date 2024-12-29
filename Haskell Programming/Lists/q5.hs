middle3 :: [Int] -> [Int]

middle3 (x:xs) = do
    let mid = div (length (x:xs)) 2
    [(x:xs) !! (mid-1), (x:xs) !! mid, (x:xs) !! (mid+1)]

main ::IO ()
main = do
    print(middle3 [4, 8, 9, 3, 7])