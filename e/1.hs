-- Naive solution
s3or5 n = s3 + s5 - s15
        where lt  = n-1
              s3  = sum [3,6..lt]
              s5  = sum [5,10..lt]
              s15 = sum [15,30..lt]
-- s3or5 1000 = 233168

-- Using sum of 'n' numbers in A.P
s a d n = (n/2) * (2*a + (n-1)* d)

-- finds sum on 'n' numbers in A.P less than or equal to  m
-- a + (n-1)*d <= m
-- n-1 <= (m - a) / d
-- n <= ((m - a)/d) + 1
s' a d m = s a d n
         where n = fromIntegral(floor(((m-a)/d)+1))

s3or5' n = s3 + s5 - s15
         where lt = n-1
               s3 = s' 3 3 lt
               s5 = s' 5 5 lt
               s15 = s' 15 15 lt
-- s3or5' 1000 = 233168.0
