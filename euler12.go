package main
import "fmt"
import "math"

func triangle_divisors (x int) (tval int) {
  for i := 1; float64(i) < math.Sqrt(float64(x) + 1); i++ {
    if x%i==0 { tval += 2 }
  }
  return tval
}

func main() {
  temp := 1
  acum := 0
    for {
      acum += temp
      temp++
      if triangle_divisors(acum) >= 500 {
      fmt.Println(acum)
      break
      }
    }
}
