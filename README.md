# Polar docker

[Polar](https://getpolarized.io/) is a document manager for web content, books
and notes. Supports tagging, annotation, highlighting and keeps track of your
reading progress.

This is an unofficial Docker image of it. You can download it directly from
[DockerHub](https://hub.docker.com/r/m0wer/docker-polar-bookshelf).

## Example usage

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -v /dev/shm:/dev/shm -v /etc/hosts:/etc/hosts --device /dev/snd --device /dev/dri --user $(id -u):$(id -g) -v ~/Downloads:/home/polar/Downloads -v ~/.polar:/home/polar/.polar -v ~/.config/polar-bookshelf:/home/polar/.config/polar-bookshelf m0wer/docker-polar-bookshelf:latest
```
