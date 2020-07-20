.PHONY: all
all:
	$(MAKE) up

podcastgen:
	git clone --branch master https://github.com/PodcastGenerator/PodcastGenerator.git podcastgen

.PHONY: up
up: podcastgen
	docker-compose up -d

.PHONY: build
build:
	docker-compose build

.PHONY: rebuild
rebuild:
	$(MAKE) down
	$(MAKE) build

.PHONY: ps
ps:
	docker-compose ps

.PHONY: start
start:
	docker-compose start

.PHONY: stop
stop:
	docker-compose stop

.PHONY: down
down:
	docker-compose down
