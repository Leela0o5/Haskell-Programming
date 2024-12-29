mycountzero:: Int->Int
mycountzero 0 = 0
mycountzero x = if (x `mod` 10) == 0 then 1 + mycountzero (div x 10)
 else mycountzero (div x 10)

main :: IO ()
main = do
    print(mycountzero 1500870)
    