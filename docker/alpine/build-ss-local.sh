#!/bin/bash
image=ss-local:v1
docker build -f Dockerfile.client -t $image .

username=bigsully
docker login -u $username
docker tag $image $username/$image
docker push $username/$image


