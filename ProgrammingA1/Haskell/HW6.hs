factorial n
   |n == 0 =1
   | otherwise = n * factorial (n - 1)

myMap f lst = [f el | el <- lst]
myLast lst = last lst
secondToLast lst = last (init lst)
elementAt lst k = lst !! (k-1)
myLength lst = length lst
myReverse lst = reverse lst
middle lst
   | length lst < 3 = []
   | otherwise = tail (init lst)

isPalindrome lst = lst == myReverse lst

isP lst = (head lst == last lst) &&  middle lst == reverse (middle lst)
main = print(isP [1,2,3,2,5])
