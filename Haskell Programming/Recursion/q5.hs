myNatSum::Int->Int
myNatSum n 
 | n<=0 = 0
 | n == 1 = 1
 | otherwise = n + myNatSum(n-1)

main :: IO ()
main = do
    print(myNatSum 5)