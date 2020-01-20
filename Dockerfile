FROM golang

WORKDIR /go/src/demo-api
COPY . .
RUN get get -d -v ./...
RUN go install -v ./...
CMD demo-api