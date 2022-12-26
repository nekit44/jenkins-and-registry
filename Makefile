init: docker-down docker-pull docker-build docker-up
up: docker-up
down: docker-down
restart: docker-down docker-up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-pull:
	docker-compose pull --include-deps

docker-build:
	docker-compose build

give-me-pass:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
