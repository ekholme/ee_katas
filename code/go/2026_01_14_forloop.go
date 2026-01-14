// running the most basic for loop in go
package main

import "fmt"

func main() {
	x := []int{1, 2, 3, 4, 5}

	//a for loop in go has 3 parts:
	//1. init statement -- runs once before the loop begins. Can be used to define a variable to be iterated over (e.g. i);
	//2. condition expression -- defining a 'while true' condition;
	//3. post statement -- runs after the body of the loop in each iteration. can be used to increment a variable, for example.
	regLoop(x)
	rangeLoop(x)
	rangeLoopV(x)
}

func regLoop(x []int) {
	for i := 0; i < len(x); i++ {
		fmt.Println(x[i])
	}
}

//a range loop is sometimes more idiomatic in go
func rangeLoop(x []int) {
	for k, v := range x {
		fmt.Printf("key: %d, value: %d\n", k, v)
	}
}

//or we can ignore the index
func rangeLoopV(x []int) {
	for _, v := range x {
		fmt.Println(v)
	}
}
