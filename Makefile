SHELL := /bin/bash

startConfig:
	./gradlew :config-server:bootRun
startEureka:
	./gradlew :eureka-server:bootRun
startGateway:
	git submodule update --init --recursive
	cd api-gateway && ./gradlew bootRun