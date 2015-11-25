NAME    = chefdk
VERSION = 0.10.0

.PHONY: all build tag_latest remove

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm --file Dockerfile .

tag_latest:
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

remove:
	docker rmi $(NAME):$(VERSION) && \
		docker rmi $(NAME):latest
