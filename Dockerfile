FROM golang:1.17.5-bullseye

ENV GOPATH /go

COPY . /go/src/
WORKDIR /go/src/

RUN go mod tidy && \
    go install github.com/cosmtrek/air@v1.27.8
