VERSION := 0.0.1
NAME := pico

docker-build:
	docker build -t xackery/pico:${VERSION} .
docker-push: docker-build
	docker push xackery/${NAME}:${VERSION}
	docker tag xackery/${NAME}:${VERSION} xackery/${NAME}:latest
	docker push xackery/${NAME}:latest