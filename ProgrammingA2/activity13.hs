-- This is a class example from Dr. Thyago Mota
import System.IO
import Data.List.Split

type Entry = (Person, Number)
type Person = String
type Number = Integer
type Phonebook = [Entry]

add :: Phonebook -> Entry -> Phonebook
add pb ent
  | elem ent pb = pb
  | otherwise = ent : pb

find :: Phonebook -> Person -> [Number]
find pb prs = [ snd ent | ent <- pb, fst ent == prs ]

delete :: Phonebook -> Person -> Phonebook
delete pb prs = [ ent | ent <- pb, fst ent /= prs ]

main = do
  rawContents <- readFile "activity13.txt"
  let rawContentsByLine = lines rawContents
  let contents = [ splitOn "," content | content <- rawContentsByLine ]
  let pb = [ (content!!0 :: Person, read (content!!1) :: Number) | content <- contents ]
  print (find pb "Mark Flores")
