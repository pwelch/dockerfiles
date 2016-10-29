NAME    = chefdk
VERSION = 0.19.6

.PHONY: all help build tag_latest remove

help:       ## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:      ## build new ChefDK Docker image
	docker build -t $(NAME):$(VERSION) --build-arg chefdk_version=$(VERSION) --rm --file Dockerfile .

tag_latest: ## tag latest ChefDK Docker image
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

remove:     ## remove Docker image
	docker rmi $(NAME):$(VERSION) && \
		docker rmi $(NAME):latest
