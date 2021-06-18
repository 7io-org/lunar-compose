.PHONY: up
up: ./var/mysql
	docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: reload
reload:
	$(MAKE) down
	$(MAKE) up

.PHONY: restart
restart:
	docker-compose restart

.PHONY: build
build:
	docker-compose build

.PHONY: pull
pull:
	docker-compose pull

# -----------------------------------------------------------------------------

# https://makefiletutorial.com/#automatic-variables
./var/mysql:
	mkdir -p "$@"
