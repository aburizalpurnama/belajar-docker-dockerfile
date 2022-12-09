package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("APP_PORT")
	fmt.Println("Run in port : " + port)
	fmt.Printf("Run in port : %s", port)

	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":"+port, nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	urlPath := r.URL.Path[1:]
	fmt.Fprintf(w, "Hello world %s", urlPath)

	dataString := "Hello " + r.URL.Path
	dataBytes := []byte(dataString)

	destination := os.Getenv("APP_DATA")
	file := destination + "/" + urlPath + ".txt"
	err := os.WriteFile(file, dataBytes, 0666)
	if err != nil {
		panic(err)
	}

	fmt.Println("Done write file : " + file)
}
