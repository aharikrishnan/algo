g a b
  | a == 0 = b
  | b == 0 = a
  | a == b = a
  | a > b  = g (a `mod` b) b
  | a < b  = g a (b `mod` a)

l a b = (a * b) `div` (g a b)

-- foldl (l) 1 [1..20]
-- 232792560
