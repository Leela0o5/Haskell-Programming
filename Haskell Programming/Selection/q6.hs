isDivisibleBy7 :: Int -> Bool
isDivisibleBy7 x = x `mod` 7 == 0

main :: IO ()
main = do
 print(isDivisibleBy7 49)