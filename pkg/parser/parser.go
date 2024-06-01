package parser

import "fmt"

func Parse(input []byte) (string, error) {
	fmt.Println(string(input))
	fmt.Println(input)

	return "", nil
}
