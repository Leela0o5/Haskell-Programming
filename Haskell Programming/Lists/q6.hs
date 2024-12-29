findlength :: [Integer]->Integer
findlength [] = 0
findlength (x:xs) = 1 + findlength xs

main :: IO ()
main = do
    putStrLn "Enter the elements in the list: "
    input <- getLine
    let nums = map read (words input)
    print(findlength nums)

