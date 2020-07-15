docker system prune -f
./rm_containers.sh
docker rmi -f $(docker images -q)

