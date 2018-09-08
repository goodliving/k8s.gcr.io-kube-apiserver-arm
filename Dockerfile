FROM golang as builder
RUN go get -u -v github.com/mitchellh/gox
RUN go get -u -v github.com/helm/chartmuseum
