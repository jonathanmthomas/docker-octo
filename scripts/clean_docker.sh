#!/bin/bash

CLEAN_EVERYTHING=false

while test $# -gt 0; do
  case "$1" in
  -h | --help)
    echo "$0 - Docker Cleaner"
    echo " "
    echo "$0 [arguments]"
    echo " "
    echo "options:"
    echo "-h, --help                          show brief help"
    echo "--all                               clean everything (default: false)"

    exit 0
    ;;
  --all)
    CLEAN_EVERYTHING=true
    shift
    ;;
  *)
    break
    ;;
  esac
done

# Stop Containers
docker kill $(docker ps -q)

# Remove Containers
docker rm -f $(docker ps -a -q)


if [[ $CLEAN_EVERYTHING == true ]]; then
    # Prune System
    docker system prune -f

    # Prune Volumes
    docker volume prune -f

    # Remove Images
    docker rmi -f $(docker images -q)
fi
