alias docker-enter=_docker_enter

_docker_enter() {
    docker exec -it $1 /bin/bash
}
