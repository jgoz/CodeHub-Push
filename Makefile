VERSION = 1.0.3

.PHONY: build push test

build: test
	docker build -t thedillonb/codehub-push:$(VERSION) .
push: build
	docker push thedillonb/codehub-push:$(VERSION)
test:
	npm t
