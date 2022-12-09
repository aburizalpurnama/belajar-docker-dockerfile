package main

import (
	"fmt"
	"net/http"
)

var count int = 0

func main() {
	http.HandleFunc("/", HelloServer)
	http.HandleFunc("/health", HealthCheck)
	http.ListenAndServe(":8089", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello world")
}

func HealthCheck(w http.ResponseWriter, r *http.Request) {
	count += 1

	if count > 5 {
		w.WriteHeader(http.StatusInternalServerError)
		fmt.Fprint(w, "Modar")
	} else {
		w.WriteHeader(http.StatusOK)
		fmt.Fprint(w, "OK")
	}
}
