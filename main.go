package main

import (
	"fmt"
)

//go:noinline
//go:asm
func initList(data int) *Node

type Node struct {
	data int
	next *Node
	prev *Node
}

func main() {
	head := initList(1)
	fmt.Println("Head node:", head)
	fmt.Println("Head data:", head.data)
}
