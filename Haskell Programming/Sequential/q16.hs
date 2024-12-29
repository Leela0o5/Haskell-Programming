displacement :: Float -> Float -> Float -> Float
displacement u a t  = u*t + 0.5*a*t*t

main :: IO ()
main = do
    putStrLn "Enter the initial velocity: "
    u <- readLn
    putStrLn "Enter the acceleration: "
    a <- readLn
    putStrLn "Enter the time: "
    t <- readLn
    print ("Displacent is " ++ show (displacement u a t))