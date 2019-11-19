-- In this activity you will write a phonebook application in Haskell.
 Create a file name pb.hs for you activity.
--fst of (a,b)
--snd(a,b)
import System.IO
import Data.List.Split

type Entry = (Person, Number)
type Person = String
type Number = Integer
type Phonebook = [Entry]

add:: phonebook ->Entry -> phonebook
add ph ent
  |elem ent pb = ph
  | otherwise= ent :pb

find:: phonebook -> Person ->[Number]
find pb prs = [snd ent |ent<-pb, fst ent == prs]

delete::phonebook -> Person ->phonebook
delete pb prs = [ ent |ent<-pb, fst ent /= prs]

-- Update the file
--writeFile "output.txt" (unlines contents)

main = do
rawcontents <- readFile "phonebook.txt"
let rawContentsByLine = lines rawContents
let contents = [splitOn ", " content|content <- rawContentsByLine]
let pb = [(content!!0 ::Person, read(content!!1)::Number)|content-contents]
print (find pb "Mark Flores")

  {--
  let pb = [ ("Joe Hughes", 4371239212), ("Mary Owen", 2039183421),
   ("Patty Riley", 2012349283), ("Mark Flores", 3039343844) ]
   pb5 = add pb ("Mark Flores", 1112221234)
  print (pb5)

  main = do
  let pb = [ ("Joe Hughes", 4371239212), ("Mary Owen", 2039183421),
   ("Patty Riley", 2012349283), ("Mark Flores", 3039343844) ]
  let pb2 = add pb ("Mark Flores", 1112221234)
  print (find pb2 "Mark Flores")

  main = do
    let pb = [ ("Joe Hughes", 4371239212), ("Mary Owen", 2039183421),
    ("Patty Riley", 2012349283), ("Mark Flores", 3039343844) ]
    let pb2 = add pb ("Mark Flores", 1112221234)
    let pb3 = delete pb2 "Mark Flores"
    print (pb3)
--}
