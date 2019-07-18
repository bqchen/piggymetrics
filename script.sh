#!/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker-compose up -d

docker cp piggymetrics_gateway_1:app/gateway.jar ../jarFile/gateway.jar
docker cp piggymetrics_account-service_1:app/account-service.jar ../jarFile/account-service.jar
docker cp piggymetrics_auth-service_1:app/auth-service.jar ../jarFile/auth-service.jar
