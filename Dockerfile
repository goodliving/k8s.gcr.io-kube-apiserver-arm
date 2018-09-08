FROM golang
RUN mkdir $GOPATH/kubernetes-helm -p  && cd $GOPATH/kubernetes-helm && git clone https://github.com/helm/chartmuseum.git && \
    cd chartmuseum/cmd/chartmuseum && go get
