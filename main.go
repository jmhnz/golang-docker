package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{"code": 200, "msg": "Hello Go"})
	})

	r.Run(":8081")
}
