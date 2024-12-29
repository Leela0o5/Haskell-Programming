box :: [[Int]] -> String
box mybox = do
    let total = sum[l * b *h | [l,b,h] <- mybox]
    show (total) ++ "inAb3"

getList :: Int -> [[Int]] -> IO[[Int]]
getList 0 myList = return myList
getList n myList = do
    putStrLn "Enter the l,b,h of each sublists: "
    input <- getLine
    let nums = map read (words input)
    if length nums == 3
        then getList (n-1) (myList++[nums])
    else
         error "incorrect input"
         getList n myList

main :: IO ()
main = do
    putStrLn "Enter n: "
    n <- readLn
    l<- getList n []
    print(box l) 

    
