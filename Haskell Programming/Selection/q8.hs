toggleCase :: Char -> Char
toggleCase ch 
 | ch `elem` "abcdefghijklmnopqrstuvwxyz" = toEnum (fromEnum ch - 32) 
 | ch `elem` ['A'..'Z'] = toEnum (fromEnum ch + 32)  -- Convert uppercase to lowercase
 | otherwise = ch 

main :: IO ()
main = do 
    print(toggleCase 'a')

