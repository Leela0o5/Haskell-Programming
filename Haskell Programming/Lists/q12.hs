oddNum :: [Int] -> [Int] 
oddNum []  = []
oddNum (x:xs) = if (mod x 2) == 1 then x : oddNum xs
 else oddNum xs 

main :: IO () 
main = do
    print(oddNum [1, 2, 3, 4, 5])


