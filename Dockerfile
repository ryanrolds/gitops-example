# build the binary
FROM golang:1.19-alpine

RUN apk add --update make git
RUN apk --no-cache add ca-certificates

COPY . /example
WORKDIR /example
RUN go build

# create a new stage containing just the binary
FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /example/
COPY --from=0 /example/gitops-example .

CMD ["./gitops-example"]
