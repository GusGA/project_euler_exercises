package main

import "fmt"
import "math/big"
func main () {
  result := new(big.Int)
  fmt.Println(result.Binomial(2 * 20 ,20))
}
