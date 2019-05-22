VERSION?=

run: build
	docker-compose up

build:
	@bash ./scripts/build.sh

release: require-version
	@bash ./scripts/release.sh

require-version:
ifndef VERSION
	$(error 'VERSION' is undefined)
else
	@echo "configured for ${VERSION}"
endif

