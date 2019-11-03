import System.IO
import Data.List.Split

main = do
    rawContents <- readFile "test.txt"
    let rawContentsByLine = lines rawContents
    let contents = [content | content <- rawContentsByLine ]

    print(contents)
