#!/bin/bash
docker run --name containernet -it --rm  --privileged --pid='host' -v /var/run/docker.sock:/var/run/docker.sock -v ${PWD}/code:/containernet/code containernet/containernet /bin/bash