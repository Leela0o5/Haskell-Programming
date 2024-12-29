biggestOfThreeNumbers :: Int -> Int -> Int -> Int 
biggestOfThreeNumbers a b c | a > b && b > c = a
 | b > a && a > c = b
 | otherwise = c

main :: IO ()
main = do
 print(biggestOfThreeNumbers 7 8 (-4))