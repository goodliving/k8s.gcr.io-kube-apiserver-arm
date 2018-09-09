FROM golang
RUN dep ensure -v -vendor-only
RUN cd /opt && dep ensure -v -vendor-only
