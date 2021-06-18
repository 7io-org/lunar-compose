.PHONY: up
up: ./var/postgres ./var/avators ./var/project-background-images ./var/attachments
	docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: recreate
recreate:
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
