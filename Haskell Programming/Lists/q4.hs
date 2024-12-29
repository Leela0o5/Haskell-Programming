percentWeight::[Float]->[String]
percentWeight xs = do
    let total = sum xs
    [show ((x/total)*100) ++ "%" | x <- xs]

main :: IO ()
main = do
    putStrLn "Enter the list : "
    input <- getLine
    let nums = map read (words input) 
    print(percentWeight nums)




