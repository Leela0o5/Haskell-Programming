positiveNegativeOrZero :: Int -> String
positiveNegativeOrZero x
    | x > 0 = "Positive"
    | x < 0 = "Negative"
    | otherwise = "Zero"


main :: IO ()
main = do
 print(positiveNegativeOrZero 0)