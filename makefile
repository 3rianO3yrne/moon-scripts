REPO := horizons
TAG := 1.0

build:
	docker build \
		-t ${REPO}:${TAG} .

run: 
	docker run ${REPO}:${TAG}

down: 
	docker compose down --remove-orphans 

up: 
	docker compose up app

run: 
	docker compose run app 
