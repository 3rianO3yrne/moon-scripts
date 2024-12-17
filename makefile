REPO := horizons
TAG := 1.0

docker_build:
	docker build \
		-t ${REPO}:${TAG} .

run_build: 
	docker run ${REPO}:${TAG}

down: 
	docker compose down --remove-orphans 

up: 
	docker compose up

rebuild:
	docker compose down --remove-orphans 
	docker compose up --force-recreate --build


prune:
	docker image prune
	docker container prune
	
remove: 
	docker compose down -v --rmi local
	docker builder prune