.PHONY=build run

IMAGE_NAME=lily

build:
	docker build -t $(IMAGE_NAME) .

run: build
run:
	docker run --rm -it -p 8888:8888 -v $(shell pwd)/notebooks:/usr/src/app/notebooks  $(IMAGE_NAME)
