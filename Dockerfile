FROM nginx:alpine
RUN apk add wget && wget https://s3.amazonaws.com/chartmuseum/release/latest/bin/linux/amd64/chartmuseum
