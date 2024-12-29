findClassAvg :: Float -> [Float] -> Float
findClassAvg n xs = do
    let classSum = sum xs
    classSum / n

checkForMoreThanTwo :: Float -> [Float] -> Bool
checkForMoreThanTwo  avg xs = do
    let count = [x | x <- xs , x < avg]
    if length count > 2
        then True
        else False

main :: IO ()
main = do
    putStrLn "Enter the number of students: "
    n <- readLn
    putStrLn "Enter Marks: "
    input <- getLine
    let marks = map read (words input)
    let clsAvg = findClassAvg n marks
    putStr "Class Average: "
    print(clsAvg)
    putStr "Is there more than 2 less than avg: "
    print(checkForMoreThanTwo clsAvg marks)




