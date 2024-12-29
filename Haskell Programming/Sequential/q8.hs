compoundInterest ::  Float -> Float -> Float -> Float
compoundInterest p r t = p * (1 + r/100) ** t

main ::IO ()
main = do
    putStrLn "P R T [Space Separated]: "
    input <- getLine
    let [p, r, t] = map read (words input)

    putStrLn ("The compound interest is  " ++ show (compoundInterest p r t))
