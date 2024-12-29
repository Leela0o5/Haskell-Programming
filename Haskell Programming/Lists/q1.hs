strjoin::[String]->String
strjoin (x:xs) = if length xs >0 
    then x ++ strjoin xs
    else x
strjoin [] = ""

main :: IO ()
main = do
    let result = strjoin ["hello", " ", "world"]
    print(result)