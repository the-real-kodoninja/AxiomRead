package main

import (
    "fmt"
    "net/http"
)

func main() {
    http.HandleFunc("/service", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Background service is running!")
    })

    http.ListenAndServe(":8080", nil)
}