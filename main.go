package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	// create gin http server with a health check endpoint
	r := gin.Default()
	r.GET("/health", func(c *gin.Context) {
		c.String(200, "OK")
	})
	r.Run(":8080")
}
