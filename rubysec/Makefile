NAME    = rubysec
VERSION = 0.1.0

.PHONY: all build tag_latest remove

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm --file Dockerfile .

tag_latest:
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

remove:
	docker rmi $(NAME):$(VERSION) && \
		docker rmi $(NAME):latest

# commands:
# docker run -v $PWD/.:/app rubysec:0.1.0 brakeman
# docker run -v $PWD/.:/app rubysec:0.1.0 /bin/bash -c 'bundle-audit update && bundle-audit'
