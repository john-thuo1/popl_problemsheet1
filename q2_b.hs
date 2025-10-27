-- Uncurried version of index function in Haskell
index :: Eq a => (a, [a]) -> Int
index (x, xs) = loop 0 xs
  where
    loop _ [] = -1
    loop n (y:ys)
      | x == y    = n
      | otherwise = loop (n+1) ys


