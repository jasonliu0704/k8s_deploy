# golang base image
FROM golang:1.14

# copy customized grpc
RUN git clone https://github.com/jasonliu0704/grpc-go.git $GOPATH/pkg/mod/google.golang.org/grpc@v1.35.0

# copy chat go files
ADD ./ $GOPATH/src/APIServer/

WORKDIR $GOPATH/src/APIServer

RUN ls $GOPATH/src/APIServer/
## build artifacts
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=1 go build -o $GOPATH

## save the configs
RUN mv $GOPATH/src/APIServer/config /tmp/app-config
RUN rm -rf $GOPATH/src/APIServer/*
RUN mv /tmp/app-config $GOPATH/src/APIServer/config

# run the release
ENTRYPOINT $GOPATH/APIServer