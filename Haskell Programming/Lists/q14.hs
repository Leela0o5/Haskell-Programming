smallest :: [Int]-> Int -> Int
smallest [] res = res
smallest (x:xs) res = if x < res then smallest xs x
 else smallest xs res

main :: IO()
main = do
    print(smallest [1, 8, 3, 0] 1000)