getNumber :: IO Int
getNumber = do
    putStrLn "Enter the number: "
    num <- getLine
    return (read num)

squareNUmber :: Int -> Int
squareNUmber x = x*x

cubeNumbers :: Int -> Int
cubeNumbers x = x*x*x

squareRootNumber :: Int -> Float
squareRootNumber x = sqrt (fromIntegral x)




main :: IO ()
main = do
    putStrLn "Menu"
    putStrLn "1. Square"
    putStrLn "2. Cube"
    putStrLn "3. Square Root"
    putStrLn "4. Exit"

    putStrLn "Enter your choice: "
    choice <- getLine

    case choice of
        "1"-> do
            num <- getNumber
            let res = squareNUmber num
            putStrLn $ show res
        "2" -> do
            num <- getNumber
            let res = cubeNumbers num
            putStrLn $ show res
        "3" -> do
            num <- getNumber
            let res = squareRootNumber num
            putStrLn $ show res
        "4" -> putStrLn "Exiting..."
    case choice of
            "4" -> return ()
            _ -> main




