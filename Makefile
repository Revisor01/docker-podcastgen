.PHONY: all
all:
	$(MAKE) up

podcastgen:
	curl -L https://sourceforge.net/projects/podcastgen/files/podcastgen/podcastgen-2.7/podcastgen-2.7.zip/download -o podcastgen.zip
	unzip podcastgen.zip
	mv PodcastGenerator-2.7 podcastgen
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
