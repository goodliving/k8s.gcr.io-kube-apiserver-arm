FROM golang
RUN dep ensure -v -vendor-only
RUN cd /opt && git clone https://github.com/helm/chartmuseum.git &&cd chartmuseum && dep ensure -v -vendor-only
