#!/bin/bash

docker build -t ruby-nodejs:latest .
docker tag ruby-nodejs:latest givlab/ruby-nodejs:latest
docker push givlab/ruby-nodejs:latest
