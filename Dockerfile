FROM golang
RUN go get -u github.com/golang/dep/cmd/dep
WORKDIR /opt
RUN git clone https://github.com/helm/chartmuseum.git && cd chartmuseum && make bootstrap
