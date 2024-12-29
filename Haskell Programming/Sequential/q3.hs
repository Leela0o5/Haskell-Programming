
convertDistance :: Float -> Float
convertDistance km = km*1000

main :: IO ()
main = do
 putStrLn "Enter distance in km"
 km <- getLine
 let m = convertDistance (read km)
 putStrLn $ km ++ " km = " ++ show m ++ " m" 
