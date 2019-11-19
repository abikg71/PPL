package main

import "fmt"

type Score struct {
  stype string
  score float32
}

type Student struct {
  id int
  scores[]Score
}


func main() {
  s1 := Student{id: 1}
  s1.scores = make([]Score, 1, 5)
  s1.scores[0].stype = "exam"
  s1.scores[0].score = 59
  s1.scores = s1.scores[:len(s1.scores) + 1]
  s1.scores[1].stype = "quiz"
  s1.scores[1].score = 47

  s2.scores[0].stype = "exam"
  s2.scores[0].score = 59
  s2.scores = s1.scores[:len(s1.scores) + 1]
  s2.scores[1].stype = "quiz"
  s2.scores[1].score = 47

  s2.id = 2 s2.scores = [{exam 65} {quiz 32} {homework 98}]
s3.id = 3 s3.scores = [{exam 100} {quiz 99}]

  fmt.Printf("s1.id = %d ", s1.id)
  fmt.Print("s1.scores = ")
  fmt.Println(s1.scores)
}


