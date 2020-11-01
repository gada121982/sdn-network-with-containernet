#!/bin/bash
docker run --name containernet -it  --privileged --pid='host' -v /var/run/docker.sock:/var/run/docker.sock -v ${pwd}/code:/containernet/examples containernet/containernet /bin/bash