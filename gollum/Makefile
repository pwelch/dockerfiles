NAME    = gollum
VERSION = 0.1.0

.PHONY: all build tag_latest remove

all: build

build:
	# docker run -v `pwd`:/wiki -p 4567:80 gollum:0.1.0
	docker build -t $(NAME):$(VERSION) --rm --file Dockerfile .

tag_latest:
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

remove:
	docker rmi $(NAME):$(VERSION) && \
		docker rmi $(NAME):latest
