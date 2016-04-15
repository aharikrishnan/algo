-- Naive

pf :: Int -> [Int]
pf n
 | n < 2            = []
 | n == 2           = [2]
 | n `mod` 2 == 0   = [2]
 | otherwise        = pf' n 3

pf' :: Int -> Int -> [Int]
pf' n f
  | f > limit       = [n]
  | n `mod` f == 0  =  f:(pf (n `div` f))
  | otherwise       = pf' n ( f+2 )
  where limit = ceiling(sqrt (fromIntegral n))

-- last $ pf 600851475143
