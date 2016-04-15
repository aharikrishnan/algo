-- Naive: Generate primes + Largest prime factor

isPrime p = all (== False) [p `mod` f == 0 |f <- takeWhile (\x -> x*x <= p) [2..]]
primes = filter isPrime [2..]

primeFactors n
            | isPrime n = [n]
            | otherwise = [f | f<- possiblePrimeFactors, n `mod` f == 0]
            where possiblePrimeFactors = takeWhile (\x -> 2*x <= n) primes
-- last (primeFactors 600851475143)

-- Alternatives: Pollard's Rho, Sieve of Eratosthenes, Quadratic sieve
--
