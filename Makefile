VERSION?=1.4

release:
	@cd ${VERSION} && bash ./release.sh

wallet:
	docker run -it -v ${WALLET_DIR}:/home/decred/.dcrwallet crypdex/decred:1.4 dcrwallet --create

require-data:
	ifndef WALLET_DIR
	$(error WALLET_DIR is not set)
	endif