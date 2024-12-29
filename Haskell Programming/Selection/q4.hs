evenOrodd :: Int -> [Char]
evenOrodd n | n `mod` 2 == 0 = "Even"
 | otherwise = "odd"

main ::IO ()
main = do
 print(evenOrodd 6)