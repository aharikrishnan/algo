sumOfSquares :: (Integral a) => a -> a
sumOfSquares n = ( n * (n + 1) * (2 * n + 1) ) `div` 6

squareOfSum :: Integral a => a -> a
squareOfSum n = (( n * (n + 1) ) `div` 2) ^ 2

diff n = (squareOfSum n) - (sumOfSquares n)
