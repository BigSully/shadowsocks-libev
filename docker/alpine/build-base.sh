#!/bin/bash
image=ss:base
docker build -f Dockerfile.base -t $image .

username=bigsully
docker login -u $username
docker tag $image $username/$image
docker push $username/$image


