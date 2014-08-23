package  main

import (
  "fmt"
  )
func is_even(x int) int {
  return x/2
}

func is_odd(x int) int {
  return 3*x + 1
}

func main() {
  big_chain := 0
  number := 0
  for i := 1000000; i > 13; i-- {
      x := i
      chain_size := 0
      for x > 1 {
          if  x % 2 == 0{
            x = is_even(x)
          } else if x % 2 == 1{
            x = is_odd(x)
          }
          chain_size++
      }
      if big_chain < chain_size {
        big_chain = chain_size
        number = i
      }
  }
  fmt.Println(number)
}
