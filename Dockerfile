FROM golang

WORKDIR /go/src/demo-api
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8080
CMD demo-api