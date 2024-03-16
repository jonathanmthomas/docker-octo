# debian-docker

Contains script to startup docker image with debian

## Add any required python libraries (pip) to requirements.txt

## Build docker image

```bash
docker build -t python-debian-docker .
```

## Run or Connect to container

```bash
docker run -it -v $(pwd):/app python-debian-docker bash
```
