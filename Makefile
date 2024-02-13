.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}'

.PHONY: docker-build
docker-build: ## build
	docker-compose up -d --build

.PHONY: docker-up
docker-up: ## up
	docker-compose up -d

.PHONY: docker-start
docker-start: ## start
	docker-compose start

.PHONY: docker-stop
docker-stop: ## stop
	docker-compose stop

.PHONY: docker-down
docker-down: ## down
	docker-compose down