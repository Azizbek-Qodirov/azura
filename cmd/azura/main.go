package main

import (
	"azura/pkg/parser"
	"fmt"
	"os"
)

func main() {
	if len(os.Args) < 3 || os.Args[1] != "run" {
		fmt.Println("Usage: azura run <filename>")
		return
	}

	filename := os.Args[2]
	code, err := os.ReadFile(filename)
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}
	index, err := parser.Parse(code)
	if err != nil {
		fmt.Printf("Invalid syntax at and/or near %s: %s", index, err.Error())
		return
	}
}
