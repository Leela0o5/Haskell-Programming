simpleInterest :: Float -> Float -> Float -> Float
simpleInterest p n r = p*n*r / 100

main :: IO ()
main = do
    putStrLn "Enter P N R values (space-seperated)"
    input <- getLine
    let [p, n, r] = map read (words input) :: [Float]

    putStrLn $ "the simple interest is " ++ show (simpleInterest p n r)