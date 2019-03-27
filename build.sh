#!/usr/bin/env bash
docker build -t prople/node . --tag "prople/node:10.15.aws"
docker tag prople/node:10.15.aws prople/node:latest