package main

import "fmt"

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
	_ = head

	fmt.Println(head)
	fmt.Println(head.data)
}
