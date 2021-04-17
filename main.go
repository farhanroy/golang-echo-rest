package main

import (
	"golang-echo-mysql/db"
	"golang-echo-mysql/routes"
)

func main() {
	db.Init()

	e := routes.Init()

	e.Logger.Fatal(e.Start(":1234"))
}