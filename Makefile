init: docker-down docker-pull docker-build docker-up
up: docker-up
down: docker-down
restart: docker-down docker-up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull --include-deps

docker-build:
	docker-compose build

give-me-pass:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

password:
	docker run --rm registry:2.7.0 htpasswd -Bbn registry ${PASS} > htpasswd

auth:
	docker-compose exec jenkins docker login 31.192.235.188:5000