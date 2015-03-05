foo1 n = sum (take n primes)
  where 
  	primes     = [x | x <- [2..], divisors x == [x] ]
  	divisors x = [y | y <- [2..x], x `mod` y == 0]

foo2 n = sum (take n primes)

primes     = [x | x <- [2..], divisors x == [x] ]

divisors x = [y | y <- [2..x], x `mod` y == 0]