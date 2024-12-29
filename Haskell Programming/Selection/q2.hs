smallestOfTwoNumbers :: Int -> Int -> Int
smallestOfTwoNumbers x y | x > y = y 
 | x < y = x
 | otherwise = x

main :: IO ()
main = do
 print(smallestOfTwoNumbers 7 5)
