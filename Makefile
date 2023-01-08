.PHONY: build

build:
	go build

docker_build: build

all: build

