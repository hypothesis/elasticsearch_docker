# elasticsearch_docker

The Elasticsearch Dockerfile for Hypothesis' development environment.

## Building the Docker image locally

To build the image for just your current platform, use:

```
docker build -t hypothesis/elasticsearch:elasticsearch7.10 .
```

To build the image for both x64 and Arm, make sure your Docker environment is
configured to support [multi-platform
builds](https://docs.docker.com/build/building/multi-platform/). Then run:

```
docker buildx build --platform linux/arm64/v8,linux/amd64 --tag hypothesis/elasticsearch:elasticsearch7.10 .
```

## Publishing the Docker container

1. Build the container for both x64 and Arm using `docker buildx` as described
   above.

2. Login to docker hub.

   ```
   docker login
   ```

3. Push the Docker image to the registry at https://hub.docker.com/r/hypothesis/elasticsearch/.

   ```
   docker push hypothesis/elasticsearch:elasticsearch7.10
   ```
