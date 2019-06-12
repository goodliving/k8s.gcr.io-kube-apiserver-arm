FROM golang:alpine
RUN apk update && apk add git wget 
WORKDIR /opt
RUN go get -u -v fyne.io/fyne
