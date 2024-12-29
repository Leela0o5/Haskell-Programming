prod :: [Int] -> Int
prod [] = 1
prod (x:xs) = x * (prod xs)

main :: IO ()
main = do
 putStrLn "Enter the list :"
 input <- getLine
 let list = map read (words input) ::[Int]
 print(prod list)

