#!/bin/bash
. .env

docker run -it \
    --name ${image_name} \
    --rm \
    -t ${image_name} \
    --volume ./share:/share:rw \
    ${image_name} \
    /bin/bash