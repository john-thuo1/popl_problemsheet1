-- Uses Recursion but does not check for -1 recurvise call
index :: Eq a => a -> [a] -> Int
index x = loop 0
  where
    -- loop takes the current index and the remaining list to search

    loop _ [] = -1
    loop n (y:ys)
      | x == y    = n
      | otherwise = loop (n+1) ys
