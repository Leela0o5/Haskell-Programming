hailstone :: Int -> [Int]
hailstone 1 = [1]
hailstone n 
 |even n = n : hailstone (div n 2)
 | otherwise = n : hailstone (3 * n + 1)

main :: IO ()
main = do
    print(hailstone 6)