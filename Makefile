-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/opsbot/build-harness/main/templates/Makefile.build-harness"; echo .build-harness)

## initialize project
bootstrap:
	make brew
	sudo chown root:wheel /usr/local/bin/docker-machine-driver-hyperkit
	sudo chmod u+s /usr/local/bin/docker-machine-driver-hyperkit
	make machine
.PHONY: bootstrap

machine:

	docker-machine create --driver hyperkit default
.PHONY: machine