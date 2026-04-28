.PHONY: fmt tidy test build verify

fmt:
	go fmt ./...

tidy:
	go mod tidy

test:
	go test ./...

build:
	go build -o bin/curator ./cmd

verify: fmt tidy test build
