dorev :: Int ->Int ->Int
dorev 0 r = r
dorev n r = dorev (div n 10) (r*10 + (mod n 10))

myrev :: Int -> Int
myrev x = dorev x 0 



main :: IO ()
main = do
 print(myrev 657)