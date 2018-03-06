# docker-phonegap
Dockerfile for a phonegap fast setup.

## Installation
You must have [Docker](https://www.docker.com/) installed. You can either pull this repository and build the image using the docker-build script:

`git clone https://github.com/idotta/docker-phonegap.git`

`sh docker-build.sh`

or you can pull the image directly from docker hub:

`docker pull idotta/phonegap`

## Usage
You can use the phonegap-cli script to pass the directory and the phonegap command:

### Run `phonegap create`
    sh phonegap-cli.sh <parent-dir> create <app-name>

### Run `phonegap serve`
    sh phonegap-cli.sh <app-dir> serve -p 3000