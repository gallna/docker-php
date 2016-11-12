SHELL = /bin/bash
NS = gallna
NAME = php7.fpm
VERSION ?= latest
GIT_TAG=$(shell git describe --tags)

.PHONY : test build push login
.DEFAULT_GOAL := test

### docker ###
release: build push

test: docker-build

build: php-ini docker-build

push: docker-push

docker-build:
	docker build -t $(NS)/$(NAME):$(VERSION) .
	@[ -z "$(GIT_TAG)" ]; docker tag $(NS)/$(NAME):$(VERSION) $(NS)/$(NAME):$(GIT_TAG); echo "$(NS)/$(NAME):$(GIT_TAG)";

docker-push:
	docker push $(NS)/$(NAME):$(VERSION)
	@[ -z "$(GIT_TAG)" ] || docker push $(NS)/$(NAME):$(GIT_TAG)

# Downloads latest php.ini from php git repository
php-ini:
	curl "http://git.php.net/?p=php-src.git;a=blob_plain;f=php.ini-production;hb=HEAD" > php.ini-production
	curl "http://git.php.net/?p=php-src.git;a=blob_plain;f=php.ini-development;hb=HEAD" > php.ini-development
	cp php.ini-development php.ini
