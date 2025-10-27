import Data.List (elemIndex)

-- Uses elemIndex from Data.List to find the index of an element in a list
index :: Eq a => a -> [a] -> Int
index x xs =
  case elemIndex x xs of
    Just i  -> i
    Nothing -> -1
