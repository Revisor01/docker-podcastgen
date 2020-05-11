.PHONY: all
all:
	$(MAKE) up

podcastgen:
	curl -L https://github.com/albertobeta/PodcastGenerator/archive/v3.0.1.zip -o podcastgen.zip
	unzip podcastgen.zip
	mv PodcastGenerator-3.0.1 podcastgen
	rm -f podcastgen.zip

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
