NAME    = latex
VERSION = 0.1.0

.PHONY: all build tag_latest remove test test_clean

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm --file Dockerfile .

tag_latest:
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

test:
	docker run --rm -v `pwd`/test:/tmp/ -w /tmp/ -u root latex:$(VERSION) /bin/sh -c "pdflatex test.tex"

test_clean:
	test/test_clean.sh

remove:
	docker rmi $(NAME):$(VERSION) && \
		docker rmi $(NAME):latest
