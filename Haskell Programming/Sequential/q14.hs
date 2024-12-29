main :: IO ()
main = do
 putStrLn "Enter the first number"
 x <- getLine
 putStrLn "Enter the second number"
 y <- getLine
 (x, y) <- return (y, x)
 print(show (x, y))
