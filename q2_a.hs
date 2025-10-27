index :: Eq a => a -> [a] -> Int
index _ [] = -1
index x (y:ys)
  | x == y    = 0
  | otherwise = if result == -1 then -1 else result + 1
  where
    result = index x ys     


