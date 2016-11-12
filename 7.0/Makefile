SHELL = /bin/bash
NS = gallna
NAME = php-fpm
VERSION ?= latest
GIT_TAG=$(shell git describe --tags)

.PHONY : build push release
.DEFAULT_GOAL := build

build: php-ini docker-build

### docker ###
docker-build:
	docker build -t $(NS)/$(NAME):$(VERSION) .
	@[ -z "$(GIT_TAG)" ]; docker tag $(NS)/$(NAME):$(VERSION) $(NS)/$(NAME):$(GIT_TAG); echo "$(NS)/$(NAME):$(GIT_TAG)";

push:
	docker push $(NS)/$(NAME):$(VERSION)
	@[ -z "$(GIT_TAG)" ] || docker push $(NS)/$(NAME):$(GIT_TAG)

release: build push

# Downloads latest php.ini from php git repository
php-ini:
	curl "http://git.php.net/?p=php-src.git;a=blob_plain;f=php.ini-production;hb=HEAD" > php.ini-production
	curl "http://git.php.net/?p=php-src.git;a=blob_plain;f=php.ini-development;hb=HEAD" > php.ini-development
	cp php.ini-development php.ini
