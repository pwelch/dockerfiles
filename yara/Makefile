NAME    = yara
VERSION = 3.5.0

.PHONY: help build tag_latest remove

help:       ## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:      ## build new docker image
	docker build -t $(NAME):$(VERSION) --build-arg yara_version=$(VERSION) --rm --file Dockerfile .

tag_latest: ## tag latest docker image
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

remove:     ## remove docker image
	docker rmi $(NAME):$(VERSION) && \
		docker rmi $(NAME):latest

test:       ## run tests in docker image
	docker run --rm -v `pwd`:/tmp/ -w /tmp/ -u root yara:$(VERSION) /bin/sh -c './test.sh'
