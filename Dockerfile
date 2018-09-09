FROM golang
RUN go get -u github.com/golang/dep/cmd/dep
RUN mkdir /go/src/github.com/kubernetes-helm -p
WORKDIR /go/src/github.com/kubernetes-helm
RUN git clone https://github.com/helm/chartmuseum.git && cd chartmuseum && make
