# ubuntu-docker

Contains script to startup docker image with ubuntu

## Add any required python libraries (pip) to requirements.txt

## Build docker image

```bash
docker build -t python-buster-docker .
```

## Run or Connect to container

```bash
docker run -it -v $(pwd):/app python-buster-docker bash
```
