multiply :: Int -> Int -> Int 
multiply _ 0 = 0
multiply a b 
 | b == 0  = error "Second Number must be non-negative"
 | otherwise = a + multiply a (b-1)

main :: IO ()
main = do
    print(multiply 2 5)