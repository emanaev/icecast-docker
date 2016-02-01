all: build

build:
	docker build -t mtneug/icecast .
.PHONY: build

clean:
	docker rmi mtneug/icecast
.PHONY: clean
