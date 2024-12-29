sumAtOdd :: [Int] -> Int -> Int -> Int
sumAtOdd [] _ res = res
sumAtOdd (x:xs) i res = if(mod i 2) == 0 then sumAtOdd  xs (i+1) (res+x)
 else sumAtOdd xs (i+1) res

main :: IO ()
main = do
 print(sumAtOdd [1,2,3,4,5] 0 0)
