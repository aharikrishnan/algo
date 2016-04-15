-- largest palindrome
i :: Int -> Bool
i n = s == reverse s
      where s = show n
fst3 (a,_,_) = a
lp :: Int -> ( Int, Int, Int )
lp l
  | l < 1     = error "length must be positive non-zero"
  | otherwise = foldl max3 (0, 0, 0) [ (x*y,x,y) | x <- a, y <- a, i(x * y) == True]
  where a = [10^l-1,10^l-2..10^(l-1)]
        max3 p q = if (fst3 p) > (fst3 q) then p else q
