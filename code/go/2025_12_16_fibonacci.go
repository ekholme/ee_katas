package main

import "fmt"

func fibonacci(n int) int {
	if n == 0 {
		return 0
	}

	if n == 1 {
		return 1
	}

	m1 := fibonacci(n - 1)
	m2 := fibonacci(n - 2)

	r := m1 + m2

	return r
}

func main() {
	n := 10
	ret := fibonacci(n)

	fmt.Printf("Fibonacci of %v: %v", n, ret)
}
