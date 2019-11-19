isPrime n
  | n == 1 = False
  | otherwise = null [k|k<- [2.. n-1], n `mod` k ==0]


isGCD a b
  | b == 0 = a
  | b > a = isGCD b a
  | otherwise = isGCD b (mod a b )
avr a b c = (a + b + c)/3
pyth d e  = (sqrt(d*d + e*e))

rev = [1,3..15]


add x y = x + y
main = do
  print(isPrime 7919)
  print(isGCD 48 12)
  print(add 5 2)
  print(avr 3 3 3)
  print(pyth 3 4)
  print(rev)
