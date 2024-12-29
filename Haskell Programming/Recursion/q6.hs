myDigitsSum :: Int -> Int
myDigitsSum x 
 | x<=0 = 0
 | otherwise = (mod x 10) + myDigitsSum(div x 10)

main :: IO ()
main = do
    print(myDigitsSum 123)