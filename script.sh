#!/bin/bash

docker run -d --name volume-test -v myvolume:/data ubuntu sleep infinity
docker rm -f volume-test

docker volume ls

docker volume rm myvolume || echo "Volume 'myvolume' does not exist."

docker volume prune -f
