fahrenheitToCelsius :: Float -> Float
fahrenheitToCelsius f = (f - 32) * 5 / 9


main :: IO ()
main = do
 putStrLn "Enter temperature in Fahrenheit: "
 f <- getLine
 putStrLn $ "The temperature in celsius is " ++ show (fahrenheitToCelsius (read f))