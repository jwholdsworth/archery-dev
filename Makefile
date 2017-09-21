### Environment

# Build and start your containers
up:
	docker-compose up -d

# Stop all containers
down:
	docker-compose down

# Rebuild necessary containers
rebuild:
	docker-compose build

### Database
data:
	docker run --rm -i --net=host mysql:5.6 mysql -uroot -psecret -h127.0.0.1 < sql/setup.sql

mysql-connect:
	docker run --rm -it --net=host mysql:5.6 mysql -uroot -psecret -h127.0.0.1

redis-connect:
	docker run --rm -it --net=host redis:3-alpine redis-cli

### Test
test:
	cd ../archery-site && make test

### Log tail

tail:
	docker logs -f archerydev_site_1

# Default action
.phony: up
