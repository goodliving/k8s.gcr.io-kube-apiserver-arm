FROM golang
RUN go get -u github.com/golang/dep/cmd/dep
RUN mkdir /opt -p && cd /opt && git clone https://github.com/helm/chartmuseum.git && cd chartmuseum && dep ensure -v -vendor-only
