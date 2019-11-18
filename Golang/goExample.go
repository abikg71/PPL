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

