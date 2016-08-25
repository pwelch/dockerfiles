NAME    = yara
VERSION = 3.5.0

.PHONY: all build tag_latest remove

all: build

build:
	docker build -t $(NAME):$(VERSION) --build-arg yara_version=$(VERSION) --rm --file Dockerfile .

tag_latest:
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

remove:
	docker rmi $(NAME):$(VERSION) && \
		docker rmi $(NAME):latest

test:
	docker run --rm -v `pwd`:/tmp/ -w /tmp/ -u root yara:$(VERSION) /bin/sh -c './test.sh'
