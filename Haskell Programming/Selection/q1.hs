greatestOfTwoNumbers :: Int -> Int -> Int
greatestOfTwoNumbers x y | x > y = x 
 | x < y = y
 | otherwise = x

main :: IO ()
main = do
 print(greatestOfTwoNumbers 10 9)