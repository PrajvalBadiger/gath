package main

import (
	"github.com/PrajvalBadiger/gath/api"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func main() {
	// Echo instance
	e := echo.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.Static("/css", "css")
	e.GET("/", api.Index_handler)

	// Start server
	e.Logger.Fatal(e.Start(":8080"))
}
