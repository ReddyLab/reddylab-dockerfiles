reddylab-dockerfiles
==========

Docker images for bioinformatic tools that are built on [dockerhub](https://hub.docker.com/) under the [reddylab organization](https://hub.docker.com/u/reddylab/).

## Source Repository Organization*

Each top level directory in the [reddylab-dockerfiles](https://github.com/reddylab/reddylab-dockerfiles/) repository
corresponds to a `reddylab/<tool-name>` docker container. Under this directory will be a directory for each version of the software. Inside each subdirectory will be the Dockerfile. The build context occurs in the directory containing the Docker file. 

For example a Dockerfile that builds version 0.11.4 of FastQC would be stored in a file at `fastqc/0.11.4/Dockerfile`.
The build context in this case is in `fastqc/0.11.4`.

## Docker Hub Setup*
Each top level directory will have a Automated Build setup with dockerhub.

Under `Build Settings` There will be a build rule latest and each version of the software pointing to the specific `<tool-name>/<software-version>/Dockerfile` on the master branch with the `<software-version>` as the tag name.

For example if we want to build version 0.11.4 and 0.11.5 of FastQC there would be two dockerfiles: `fastqc/0.11.4/Dockerfile` and `fastqc/0.11.5/Dockerfile`. 

We would create three build rules on dockerhub for the `reddylab/fastqc` container:
```
Type    Name   Dockerfile Location                      Docker Tag Name
Branch  master /overrepresented_sequence_extract/1.0    latest
Branch  master /overrepresented_sequence_extract/1.0    1.0
```

\**Inspired by our colleages at [Duke GCB](http://genome.duke.edu)*