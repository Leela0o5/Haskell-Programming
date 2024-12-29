quickSort ::  [Int] -> [Int]

quickSort [] = []
quickSort (x:xs) = quickSort [y | y<-xs,y<=x] ++[x] ++ quickSort [y | y<-xs,y>x]

main :: IO ()
main = do
    print(quickSort [1, 9, 0, 3])