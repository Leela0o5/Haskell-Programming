main :: IO ()
main = do
 putStrLn "Ener the char : "
 c <- getChar
 putStrLn "The ascii value is "
 print(fromEnum c)
