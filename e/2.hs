-- Fibonacci sequence
fib@(1:tfib) = 1:1:[ a+b | (a, b) <- zip fib tfib]

-- Naive
evenFib = [a | a <- fib, even a ]
evenFibSum n = sum $ takeWhile (< n) evenFib
-- evenFibSum 4000000

-- Every third number in a fibonacci series is even
