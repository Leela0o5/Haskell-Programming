feetTocms :: Float -> Float
feetTocms feet = feet * 30.48

main :: IO ()
main = do
    putStrLn "Enter the feet measurement: "
    feet <- getLine
    putStrLn $ feet ++ " feet = "++ show(feetTocms (read feet)) ++ " cms"