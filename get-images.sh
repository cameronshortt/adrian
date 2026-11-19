#!/bin/sh

save()
{
    podman pull "$1"
    podman save -o /tmp/"$2" --format oci-archive "$1"
    mv /tmp/"$2" images/
}

mkdir images

save docker.io/fdmmonster/fdm-monster:latest fdm-monster
save docker.io/octoprint/octoprint:latest octoprint
save ghcr.io/mainsail-crew/mainsail:latest mainsail
save docker.io/mkuf/moonraker:latest moonraker
save docker.io/mkuf/klipper:latest klipper

