mybase :: Int->Int->Int
mybase x 0 = 1
mybase x 1 = x
mybase x n = x * (mybase x (n-1))

main :: IO ()
main = do
    print(mybase 2 3)