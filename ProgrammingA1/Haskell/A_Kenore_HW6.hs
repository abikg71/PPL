-- Abinet Kenore
-- HW #6
-- October 13, 19
isPalindrome list = list == reverse list
main = do
   print(isPalindrome [1, 2, 3, 2, 1])
   print(isPalindrome [1, 2, 2, 1])
   print(isPalindrome [1, 2, 3, 1])
   print(isPalindrome "luzazul")
   print(isPalindrome "SATOR AREPO TENET OPERA ROTAS")
   print(isPalindrome "abc")
