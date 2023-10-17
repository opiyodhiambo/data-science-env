#!/bin/bash
# This is a comment
echo "Starting the container..."

sudo docker run \
--name my-ds-env \
-v datascience-env:/datascience-env \
-w /data-science \
-p 8888:8888 \
opiyoarnold/datascience:latest \
jupyter-notebook --NotebookApp.allow_root=true



