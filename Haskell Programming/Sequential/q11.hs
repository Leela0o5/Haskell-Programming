main :: IO ()
main = do
 putStrLn "Ener the char in small case"
 c <- getChar
 let upperC = toEnum (fromEnum c - 32) :: Char
 putStrLn $ "The uppercase char is " ++ [upperC]

