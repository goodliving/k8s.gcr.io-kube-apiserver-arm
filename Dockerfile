FROM golang
RUN go get -u github.com/golang/dep/cmd/dep
RUN mkdir /go/src/github.com/kubernetes-helm -p
WORKDIR /go/src/github.com/kubernetes-helm
RUN git clone https://github.com/helm/chartmuseum.git && cp -r /go/src/github.com/kubernetes-helm /go/src/github.com/helm && \
    cd chartmuseum && \
    make bootstrap && \
    make build
