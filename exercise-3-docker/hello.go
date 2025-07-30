package main

import (
	"fmt"
	"os"
)

func main() {
	user, exists := os.LookupEnv("USER")
	if !exists {
		user = "World"
	}
	message := fmt.Sprintf("Hello %s", user)
	fmt.Println(message)
}
