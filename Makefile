SHELL=/bin/bash
MANIFEST=./manifest
IMAGE=gmt.reg.me/test/mysql:5.7

all: build push deploy

build:
	@docker build -t ${IMAGE} .

push:
	@docker push ${IMAGE}

deploy: OP=create
deploy:
	@kubectl ${OP} -f ${MANIFEST}/.

clean: OP=delete
clean:
	@kubectl ${OP} -f ${MANIFEST}/.
