.PHONY: build push
.DEFAULT_GOAL := build

build:
	@docker build -t gallna/docker-php-fpm:7-ffmpeg .

push:
	@docker push gallna/docker-php-fpm:7-ffmpeg

release:
	build
	push
