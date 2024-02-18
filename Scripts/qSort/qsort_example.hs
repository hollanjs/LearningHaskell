qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort less ++ [x] ++ qsort more
     where less = filter (<x)  xs
           more = filter (>=x) xs

main :: IO ()
main = 
    print (qsort [6,8,2,3,9,9,1,56,6])




