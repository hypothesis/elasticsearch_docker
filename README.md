# elasticsearch_docker
Contains the Elastic Search Dockerfile for Hypothesis' development environment.

## Add a new docker image to the registry
1. Build the image locally and tag it with the appropriate elastic search version.
```
docker build -t hypothesis/elasticsearch:elasticsearch6.2 .
```
2. Login to docker hub.
```
docker login
```
3. Push the docker image to the https://hub.docker.com/r/hypothesis/elasticsearch/ docker registry.
```
docker push hypothesis/elasticsearch:elasticsearch6.2
```
4. Cleanup (optional) by deleting any unused images.
```
docker rmi hypothesis/elasticsearch:elasticsearch6.2
```
