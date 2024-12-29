findAfter :: [Int] -> Int-> String
findAfter [_] _ = error "Only one element or the element is not in the list"
findAfter (x:y:xs) n = if(x == n) then "The next element is " ++ show y
 else findAfter (y:xs) n

main :: IO ()
main = do
    putStrLn "Enter the list (space-seperated)"
    input <- getLine
    let l = map read (words input) :: [Int]
    putStrLn "Enter n: "
    n <- readLn
    putStrLn $ findAfter l n