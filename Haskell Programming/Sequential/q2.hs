-- Two Number input function
getTwoNumbers :: IO(Int , Int)
getTwoNumbers = do
 putStrLn "Enter first number:"
 num_1 <- getLine
 putStrLn "Enter second number:"
 num_2 <- getLine
 return (read num_1, read num_2)

sumNumbers :: (Int, Int) -> Int
sumNumbers (x, y) = x + y

differnceNumbers :: (Int,Int) -> Int
differnceNumbers (x, y) = x - y

productNumbers :: (Int, Int) -> Int
productNumbers (x, y) = x*y

quotientNumbers :: (Int, Int) -> Int
quotientNumbers (x, y) = if y == 0 then 0 else div x y

remainderNumbers :: (Int, Int) -> Int
remainderNumbers (x, y) = if y == 0 then 0 else mod x y

main :: IO ()
main = do
 
    putStrLn "Menu driven:"
    putStrLn "1. Sum"
    putStrLn "2. Difference"
    putStrLn "3. Product"
    putStrLn "4. Quotient"
    putStrLn "5. Remainder"
    putStrLn "6. Exit"

    putStrLn "Enter your choice:"
    choice <- getLine

    case choice of
        "1" -> do
            numbers <- getTwoNumbers
            let res =  sumNumbers numbers
            putStrLn ("Result = "++ show res)
        "2" -> do
            numbers <- getTwoNumbers
            let res =  differnceNumbers numbers
            putStrLn ("Result = "++ show res)
        "3" -> do
            numbers <- getTwoNumbers
            let res =  productNumbers numbers
            putStrLn ("Result = "++ show res)
        "4" -> do
            numbers <- getTwoNumbers
            let res =  quotientNumbers numbers
            putStrLn ("Result = "++ show res)
        "5" -> do
            numbers <- getTwoNumbers
            let res =  remainderNumbers numbers
            putStrLn ("Result = "++ show res)
        "6" -> putStrLn "Exiting..."
    case choice of
        "6" -> return ()
        _ -> main

        


