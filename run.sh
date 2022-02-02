#!/bin/bash

set -eux

containername="kirpici-container"

docker stop ${containername} || true

docker run  \
           -d \
           --rm \
           -v $(pwd):/srv/jekyll \
           --publish 127.0.0.1:4000:4000 \
           --name ${containername} \
           jekyll/jekyll:4.2.0 \
           jekyll serve --liverleload
