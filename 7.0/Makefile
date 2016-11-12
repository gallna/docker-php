NS = gallna
NAME = php7.1
TAG = fpm

.DEFAULT_GOAL := all

all: build push

### docker ###

build:
	docker build -t $(NS)/$(NAME):$(TAG) .

push:
	docker push $(NS)/$(NAME):$(TAG)

pull:
	docker pull $(NS)/$(NAME):$(TAG)
