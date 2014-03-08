
count :: [a] -> Int
count list = count' 0 list 
    where count' n [] = n
          count' n (h:tail) = count' (n + 1) tail

main = putStrLn $ show (count [1..5] == length [1..5])